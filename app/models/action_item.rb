class ActionItem < ActiveRecord::Base
  belongs_to :SalesOrder
  belongs_to :User
end
