class RemoveSalesOrderfromPart < ActiveRecord::Migration
  def change
    remove_column :parts, :SalesOrder_id
  end
end
