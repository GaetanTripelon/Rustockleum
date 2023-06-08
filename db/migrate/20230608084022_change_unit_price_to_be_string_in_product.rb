class ChangeUnitPriceToBeStringInProduct < ActiveRecord::Migration[7.0]
  def change
    change_column :products, :unit_price, :string
  end
end
