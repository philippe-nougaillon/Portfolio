class Projet < ApplicationRecord
  acts_as_taggable_on :tags

  default_scope { order('poids DESC') }

  def thumbnail_image_path
    "projets/#{self.nom.downcase}/screen_0.png"
  end
end
