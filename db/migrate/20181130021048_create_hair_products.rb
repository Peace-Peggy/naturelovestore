class CreateHairProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :hair_products do |t|
      t.string :name
      t.string :type
      t.text :description
      t.integer :size
      t.decimal :price
      t.string :ingredients

      t.timestamps
    end
  end
end
