class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.text :description
      t.integer :year_built
      t.integer :square_feet
      t.decimal :bedrooms, precision: 3, scale: 1
      t.decimal :bathrooms, precision: 3, scale: 1
      t.integer :floors
      t.string :availability
      t.string :address
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
