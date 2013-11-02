class AddUseridToDilemas < ActiveRecord::Migration
  def change
    add_column :dilemas, :user_is, :integer
  end
end
