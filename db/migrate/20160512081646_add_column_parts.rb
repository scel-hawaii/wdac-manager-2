class AddColumnParts < ActiveRecord::Migration
  def change
    add_column :parts, :hardware_id, :integer
  end
end
