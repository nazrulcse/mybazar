class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|

      t.integer :account_id
      t.integer :house_rent
      t.integer :gas_bill
      t.integer :meal
      t.integer :service
      t.integer :extra
      t.timestamps
    end
  end
end
