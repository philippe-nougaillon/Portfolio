# frozen_string_literal: true

class TagComponent < ViewComponent::Base
  def initialize(tags:)
    @tags = tags
  end

end
