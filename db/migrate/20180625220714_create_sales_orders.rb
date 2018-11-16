class CreateSalesOrders < ActiveRecord::Migration
  def change
    create_table :sales_orders do |t|
      t.integer :number
      t.string :description
      t.date :opened_date
      t.date :due_date
      t.references :customer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
