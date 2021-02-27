class AddNameToLegosets < ActiveRecord::Migration[6.1]
  def change
    add_column :legosets, :name, :string
  end
end
