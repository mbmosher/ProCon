class AddRealuseridToDilemas < ActiveRecord::Migration
  def change
    add_column :dilemas, :user_id, :integer
  end
end
