class RemoveCloumns < ActiveRecord::Migration
  def change
  
  remove_column :users, :first_name
  remove_column :users, :last_name
  remove_column :users, :first
  remove_column :users, :last
  
  end
end
