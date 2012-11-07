class AddFieldsToUsers < ActiveRecord::Migration
  def up
    add_column :users, :name, :string
    add_column :users, :roll, :string
  end

  def down
    remove_column :users, :name
    remove_column :users, :roll
  end
end
