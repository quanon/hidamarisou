class CreateGirls < ActiveRecord::Migration[6.1]
  def change
    create_table :girls do |t|
      t.string :name, null: false
      t.string :color, null: false
      t.integer :room_number
      t.string :weapon
      t.integer :soul_gem_status

      t.timestamps
    end
  end
end
