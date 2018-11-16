class ChangePNtoString < ActiveRecord::Migration
  def change
    change_column :parts, :number, :string
  end
end
