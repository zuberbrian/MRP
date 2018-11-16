class CreateWorkOrders < ActiveRecord::Migration
  def change
    create_table :work_orders do |t|
      t.integer :number
      t.string :description
      t.references :SalesOrder, index: true, foreign_key: true
      t.date :opened_date
      t.date :due_date
      t.string :expected_date

      t.timestamps null: false
    end
  end
end
