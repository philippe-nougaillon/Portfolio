class AddCommitDeployCoffeeToProjet < ActiveRecord::Migration[7.0]
  def change
    add_column :projets, :commit, :integer, default: 0
    add_column :projets, :deploy, :integer, default: 0
    add_column :projets, :coffee, :integer, default: 0
  end
end
