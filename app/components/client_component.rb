# frozen_string_literal: true

class ClientComponent < ViewComponent::Base
  def initialize(client:)
    @client = client
  end

end
