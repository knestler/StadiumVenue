class CreateStadia < ActiveRecord::Migration[5.2]
  def change
    create_table :stadia do |t|
      t.string :name
      t.integer :capacity
      t.boolean :indoor
      t.timestamps
    end
  end
end
 