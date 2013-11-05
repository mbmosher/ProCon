class AddPcTotalsToDilemas < ActiveRecord::Migration
  def change
    add_column :dilemas, :pro_total, :integer
    add_column :dilemas, :con_total, :integer
    add_column :dilemas, :result, :string
  end
end
