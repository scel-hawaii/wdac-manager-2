class ChangeColumnInIssues < ActiveRecord::Migration
  def change
    rename_column :issues, :date, :date_created
  end
end
