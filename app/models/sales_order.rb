class SalesOrder < ActiveRecord::Base
  belongs_to :customer
  has_many :work_orders
  has_many :purchase_orders
end
