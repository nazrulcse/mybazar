class AddUserIdFieldToBazar < ActiveRecord::Migration
  def up
    add_column :bazars, :user_id, :integer
  end
  def down
    remove_column :bazars, :user_id
  end
end
