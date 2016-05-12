class CreateHardwareParts < ActiveRecord::Migration
  def change
    create_table :hardware_parts do |t|
      t.integer :hardware_id
      t.integer :part_id

      t.timestamps null: false
    end
  end
end
