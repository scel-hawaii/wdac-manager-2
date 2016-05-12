class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :battery_histories, :type, :battery_type
  end
end
