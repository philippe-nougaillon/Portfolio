class ReindexPost < ActiveRecord::Migration[7.0]
  def change
    PgSearch::Multisearch.rebuild(Post)
  end
end
