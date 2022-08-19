class Client < ApplicationRecord
  include PgSearch::Model
  multisearchable against: [:name, :description]
  acts_as_taggable_on :tags

  default_scope { order(:id) }

end
