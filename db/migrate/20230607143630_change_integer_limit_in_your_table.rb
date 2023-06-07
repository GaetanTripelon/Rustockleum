class ChangeIntegerLimitInYourTable < ActiveRecord::Migration[7.0]
  def change
    change_column :products, :ean, :bigint
    change_column :products, :stock, :bigint
    change_column :products, :unit_price, :string
  end
end
