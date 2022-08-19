class Post < ApplicationRecord
  include PgSearch::Model
  multisearchable against: [:title, :content]

  acts_as_taggable_on :tags
  acts_as_ordered_taggable_on :tags

  default_scope { order('date DESC') }

end
