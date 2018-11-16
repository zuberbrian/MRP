class RemovePartfromPo < ActiveRecord::Migration
  def change
    remove_column :purchase_orders, :Part_id
  end
end
