class PagesController < ApplicationController
  def home
    @projets = Projet.all
    @tags = @projets.tag_counts_on(:tags).sort
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
