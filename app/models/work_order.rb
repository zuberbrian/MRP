class WorkOrder < ActiveRecord::Base
  belongs_to :SalesOrder
end
