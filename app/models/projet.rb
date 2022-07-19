class Projet < ApplicationRecord
  acts_as_taggable_on :tags
  acts_as_ordered_taggable_on :tags

  default_scope { order('poids DESC') }
end
