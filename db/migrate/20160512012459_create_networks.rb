class CreateNetworks < ActiveRecord::Migration
  def change
    create_table :networks do |t|
      t.integer :network_id
      t.string :description

      t.timestamps null: false
    end
  end
end
