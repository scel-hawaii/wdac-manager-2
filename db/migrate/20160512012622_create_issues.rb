class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.integer :issue_id
      t.string :title
      t.string :description
      t.integer :weatherbox_id
      t.string :status
      t.date :date

      t.timestamps null: false
    end
  end
end
