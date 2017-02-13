class CreateRoundStatuses < ActiveRecord::Migration
  def change
    create_table :round_statuses do |t|
      t.integer :round_id
      t.integer :bank_id
      t.integer :cause_id

      t.timestamps null: false
    end
  end
end
