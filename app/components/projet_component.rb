# frozen_string_literal: true

class ProjetComponent < ViewComponent::Base
  def initialize(projet:, user_signed_in:)
    @projet = projet
    @user_signed_in = user_signed_in
  end

end
