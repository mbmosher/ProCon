class ChangeResultFormatInDilemas < ActiveRecord::Migration
  def change
    remove_column :dilemas, :result, :integer
    
    add_column :dilemas, :result, :integer
  end
end
