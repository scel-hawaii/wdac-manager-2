class DropHardwareParts < ActiveRecord::Migration
  def change
    drop_table :hardware_parts
  end
end
