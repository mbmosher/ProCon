class Removeuserid < ActiveRecord::Migration
  def change
  
  remove_column :dilemas, :user
  end
end
