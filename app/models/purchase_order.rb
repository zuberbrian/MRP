class PurchaseOrder < ActiveRecord::Base
  belongs_to :Supplier
  belongs_to :SalesOrder
  belongs_to :Part
end
