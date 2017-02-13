class ChangePriceStringToInteger < ActiveRecord::Migration
  def change
  	change_column :bank_offers, :price, :decimal, :precision => 8, :scale => 2
  end
end
