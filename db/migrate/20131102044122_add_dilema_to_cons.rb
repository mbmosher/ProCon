class AddDilemaToCons < ActiveRecord::Migration
  def change
    add_column :cons, :dilema_id, :integer
  end
end
