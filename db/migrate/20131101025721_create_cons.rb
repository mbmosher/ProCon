class CreateCons < ActiveRecord::Migration
  def change
    create_table :cons do |t|
      t.text :name
      t.integer :value

      t.timestamps
    end
  end
end
