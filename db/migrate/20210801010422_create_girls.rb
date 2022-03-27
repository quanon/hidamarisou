class CreateGirls < ActiveRecord::Migration[6.1]
  def change
    create_table :voice_actors, id: :bigint, unsigned: true do |t|
      t.string :name, null: false

      t.timestamps
    end

    create_table :girls, id: :bigint, unsigned: true do |t|
      t.references :girl, unsigned: true, polymorphic: true
      t.references :voice_actor, null: false
      t.string :name, null: false

      t.timestamps

      t.index %i(girl_type girl_id), unique: true
    end

    create_table :hidamari_girls, id: :bigint, unsigned: true do |t|
      t.integer :room_number, unsigned: true, limit: 2, null: false # SMALLINT

      t.timestamps
    end

    create_table :magical_girls, id: :bigint, unsigned: true do |t|
      t.string :color, null: false
      t.integer :soul_gem_status, unsigned: true, limit: 1, null: false # TINYINT

      t.timestamps
    end
  end
end
