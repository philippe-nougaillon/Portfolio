class AddDateToPost < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :date, :datetime
  end
end
