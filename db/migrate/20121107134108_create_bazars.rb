class CreateBazars < ActiveRecord::Migration
  def change
    create_table :bazars do |t|
      t.string :month
      t.string :year
      t.datetime :date
      t.string :description
      t.integer :total

      t.timestamps
    end
  end
end
