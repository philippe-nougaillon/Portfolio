class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.string :email
      t.string :objet
      t.text :contenu

      t.timestamps
    end
  end
end
