class CreatePurchaseOrders < ActiveRecord::Migration
  def change
    create_table :purchase_orders do |t|
      t.integer :number
      t.references :Supplier, index: true, foreign_key: true
      t.references :SalesOrder, index: true, foreign_key: true
      t.string :notes
      t.date :order_date
      t.date :due_date
      t.date :expected_date
      t.references :Part, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
