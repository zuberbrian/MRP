class CreateActionItems < ActiveRecord::Migration
  def change
    create_table :action_items do |t|
      t.string :description
      t.date :opened_date
      t.date :due_date
      t.date :expected_date
      t.references :SalesOrder, index: true, foreign_key: true
      t.references :User, index: true, foreign_key: true
      t.integer :assigned_to
      t.integer :assigned_by
      t.string :status

      t.timestamps null: false
    end
  end
end
