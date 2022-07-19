# frozen_string_literal: true

class TagListComponent < ViewComponent::Base
  def initialize(tags:)
    @tags = tags
  end

end
