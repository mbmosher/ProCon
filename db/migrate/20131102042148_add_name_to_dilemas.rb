class AddNameToDilemas < ActiveRecord::Migration
  def change
    add_column :dilemas, :user, :integer
  end
end
