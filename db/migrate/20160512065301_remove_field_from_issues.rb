class RemoveFieldFromIssues < ActiveRecord::Migration
  def change
    remove_column :issues, :issue_id
  end
end
