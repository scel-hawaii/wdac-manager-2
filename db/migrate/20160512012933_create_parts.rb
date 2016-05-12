class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.integer :part_id
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
