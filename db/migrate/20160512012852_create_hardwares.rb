class CreateHardwares < ActiveRecord::Migration
  def change
    create_table :hardwares do |t|
      t.integer :hardware_id
      t.string :name
      t.string :notes

      t.timestamps null: false
    end
  end
end
