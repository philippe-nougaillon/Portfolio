class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @projets = Projet.all
    @projets_commits = @projets.sum(:commit)
    @projets_deploys = @projets.sum(:deploy)
    @projets_coffees = @projets.sum(:coffee)
  end

  def portfolio
    @projets = Projet.all
    @tags = @projets.tag_counts_on(:tags).order(:taggings_count).reverse

    unless params[:tag].blank? 
      if params[:tag] != session[:tag]
        @projets = Projet.tagged_with(params[:tag])
        session[:tag] = params[:tag]
      else
        session[:tag] = params[:tag] = nil
      end
    end
    @projets_commits = @projets.sum(:commit)
    @projets_deploys = @projets.sum(:deploy)
    @projets_coffees = @projets.sum(:coffee)
    @projets = @projets.includes(:tags)
  end

  def contact
  end

  def contact_submit
    if verify_recaptcha
      message = Message.create(email: params[:email], objet: params[:objet], contenu: params[:contenu])
      ContactMailer.submitted(message).deliver_now
      redirect_to root_path, notice: 'Votre message a bien été envoyé.'
    else
      flash[:alert] = "Problème avec reCAPTCHA, merci de réessayer"
      render 'contact'
    end
  end

  def a_propos
  end

  def blog
    @posts = Post.where(published: true)
    @tags = @posts.tag_counts_on(:tags).order(:taggings_count).reverse

    unless params[:tag].blank?
      if params[:tag] != session[:tag]
        @posts = Post.tagged_with(params[:tag])
        session[:tag] = params[:tag]
      else
        session[:tag] = params[:tag] = nil
      end
    end
  end

  def nos_clients
    @clients = Client.all
    @tags = @clients.tag_counts_on(:tags).order(:taggings_count).reverse

    unless params[:tag].blank? 
      if params[:tag] != session[:tag]
        @clients = Client.tagged_with(params[:tag])
        session[:tag] = params[:tag]
      else
        session[:tag] = params[:tag] = nil
      end
    end
  end

  def confidentialite
  end

  def services
  end

  def rechercher
    unless params[:search].blank?
      @results = PgSearch.multisearch("%#{ params[:search] }%")
    end
  end

  def partenaires
  end

  def apps
  end

  def camino
  end

  def prestofacto
  end

  def planning
  end

  def guide_planning
  end

  def mentions_légales
  end

end
