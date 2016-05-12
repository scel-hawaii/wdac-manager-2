class RemoveIssuesColumn < ActiveRecord::Migration
  def change
    remove_column :issues, :date_created
  end
end
