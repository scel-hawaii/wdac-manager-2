class RemoveFieldFromTableName < ActiveRecord::Migration
  def change
    remove_column :softwares, :software_id
    remove_column :hardwares, :hardware_id
    remove_column :locations, :location_id
    remove_column :networks, :network_id
    remove_column :parts, :part_id
  end
end
