# frozen_string_literal: true

class StatComponent < ViewComponent::Base

  def initialize(nbr_projets:, nbr_commits:, nbr_deploys:, nbr_coffees:)
    @nbr_projets = nbr_projets
    @nbr_commits = nbr_commits
    @nbr_deploys = nbr_deploys
    @nbr_coffees = nbr_coffees
  end

end
