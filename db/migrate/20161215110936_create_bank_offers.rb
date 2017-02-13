class CreateBankOffers < ActiveRecord::Migration
  def change
    create_table :bank_offers do |t|
      t.integer :round_id
      t.integer :bank_id
      t.string :price

      t.timestamps null: false
    end
  end
end
