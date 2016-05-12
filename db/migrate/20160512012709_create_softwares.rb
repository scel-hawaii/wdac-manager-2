class CreateSoftwares < ActiveRecord::Migration
  def change
    create_table :softwares do |t|
      t.integer :software_id
      t.string :version
      t.string :notes

      t.timestamps null: false
    end
  end
end
