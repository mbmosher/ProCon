class RemoveUserisFromDilemas < ActiveRecord::Migration
  def change
    remove_column :dilemas, :user_is, :integer
  end
end
