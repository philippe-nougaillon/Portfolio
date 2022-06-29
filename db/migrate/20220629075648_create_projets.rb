class CreateProjets < ActiveRecord::Migration[7.0]
  def change
    create_table :projets do |t|
      t.string :nom
      t.string :url

      t.timestamps
    end
  end
end
