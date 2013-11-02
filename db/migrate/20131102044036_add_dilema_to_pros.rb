class AddDilemaToPros < ActiveRecord::Migration
  def change
    add_column :pros, :dilema_id, :integer
  end
end
