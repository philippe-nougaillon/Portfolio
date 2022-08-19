class ReindexProjetAndClient < ActiveRecord::Migration[7.0]
  def change
    PgSearch::Multisearch.rebuild(Projet)
    PgSearch::Multisearch.rebuild(Client)
  end
end
