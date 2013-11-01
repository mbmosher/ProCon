class CreateDilemas < ActiveRecord::Migration
  def change
    create_table :dilemas do |t|
      t.text :decision

      t.timestamps
    end
  end
end
