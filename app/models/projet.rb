class Projet < ApplicationRecord
  def thumbnail_image_path
    "projets/#{self.nom.downcase}/screen_0.png"
  end
end
