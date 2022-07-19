class Client < ApplicationRecord
  acts_as_taggable_on :tags

  default_scope { order(:id) }

end
