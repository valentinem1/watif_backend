class OrderJoiner < ApplicationRecord
  # declare relationship between order and item
  # it is very declarative that the order_joiner which is the joiner between the order and the item instances belong to the order and the item it has been created with.
  belongs_to :order
  belongs_to :item
end

