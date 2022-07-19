# frozen_string_literal: true

module ProjetDecorator
  def thumbnail_image_path
    "projets/#{self.nom.downcase}/screen_0.png"
  end

  def logo_image_path
    "projets/#{self.nom.downcase}/logo.png"
  end
end
