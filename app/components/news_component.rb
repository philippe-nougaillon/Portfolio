# frozen_string_literal: true

class NewsComponent < ViewComponent::Base
  def initialize(posts:)
    @posts = posts
  end

end
