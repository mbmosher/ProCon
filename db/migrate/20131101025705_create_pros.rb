class CreatePros < ActiveRecord::Migration
  def change
    create_table :pros do |t|
      t.text :name
      t.integer :value

      t.timestamps
    end
  end
end
