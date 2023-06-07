class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :reference
      t.text :description
      t.integer :ral
      t.integer :contenu
      t.string :contenu_unit
      t.integer :ean
      t.integer :cdt
      t.float :public_price
      t.float :unit_price
      t.integer :stock
      t.string :datasheet
      t.string :msds

      t.timestamps
    end
  end
end
