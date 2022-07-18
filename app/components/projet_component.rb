# frozen_string_literal: true

class ProjetComponent < ViewComponent::Base
  def initialize(projet:)
    @projet = projet
  end

end
