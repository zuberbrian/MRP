class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.string :name
      t.string :description
      t.integer :number
      t.float :price
      t.integer :lead_time
      t.references :Supplier, index: true, foreign_key: true
      t.references :SalesOrder, index: true, foreign_key: true
      t.string :notes

      t.timestamps null: false
    end
  end
end
