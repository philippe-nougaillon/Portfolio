class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
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
    success = verify_recaptcha(action: 'contact', minimum_score: 0.5, secret_key: ENV['RECAPTCHA_SECRET_KEY'])
    checkbox_success = verify_recaptcha unless success
    if success || checkbox_success
      message = Message.create(email: params[:email], objet: params[:objet], contenu: params[:contenu])
      ContactNotificationJob.perform_later(message)
      redirect_to root_path, notice: 'Votre message a bien été envoyé.'
    else
      if !success
        @show_checkbox_recaptcha = true
      end
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
  
end
