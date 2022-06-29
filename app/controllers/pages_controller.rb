class PagesController < ApplicationController
  def home
    @projets = Projet.all
  end
end
