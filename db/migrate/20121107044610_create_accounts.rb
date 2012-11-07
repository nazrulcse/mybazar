class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :user_id
      t.string :month
      t.string :year
      t.string :paid

      t.timestamps
    end
  end
end
