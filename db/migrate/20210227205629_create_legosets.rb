class CreateLegosets < ActiveRecord::Migration[6.1]
  def change
    create_table :legosets do |t|
      t.integer :number_of_pieces
      t.float :price
      t.integer :age
      t.string :user_id
      t.string :theme_id

      t.timestamps
    end
  end
end
