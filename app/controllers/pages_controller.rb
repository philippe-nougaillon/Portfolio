class PagesController < ApplicationController
  
  def home
    @projets = Projet.all

    unless params[:tag].blank? 
      if params[:tag] != session[:tag]
        @projets = Projet.tagged_with(params[:tag])
        session[:tag] = params[:tag]
      else
        session[:tag] = params[:tag] = nil
      end
    end

    @tags = Projet.tag_counts_on(:tags)

  end

  def contact
  end

  def contact_submit
    message = Message.create(email: params[:email], objet: params[:objet], contenu: params[:contenu])
    ContactMailer.submitted(message).deliver_now
    redirect_to root_path, notice: 'Votre message a bien été envoyé.'
  end

  def a_propos
  end
  
end
