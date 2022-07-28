class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @tags = Projet.tag_counts_on(:tags)
    @projets = Projet.all

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
    message = Message.create(email: params[:email], objet: params[:objet], contenu: params[:contenu])
    ContactNotificationJob.perform_later(message)
    redirect_to root_path, notice: 'Votre message a bien été envoyé.'
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
  end

  def confidentialite
  end
  
end
