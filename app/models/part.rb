class Part < ActiveRecord::Base
  belongs_to :Supplier
  belongs_to :SalesOrder
  validates :name, :number, :price, :lead_time, :Supplier_id, presence: true
end
