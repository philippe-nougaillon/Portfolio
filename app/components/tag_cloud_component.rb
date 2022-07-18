# frozen_string_literal: true

class TagCloudComponent < ViewComponent::Base
  def initialize(tags:)
    @tags = tags
  end

end
