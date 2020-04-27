class Order < ApplicationRecord
  # declarative relationship with the user
  # the order belongs to the user instance who created the order.
  belongs_to :user
  
  # defines relationship between the order and the item
  # since it is a many to many relationship it needs a joiner to avoid conflict.
  # An order has many items or can have many items in it. 
  # order_joiner just make the relation between order and item.
  has_many :order_joiners, dependent: :destroy
  has_many :items, through: :order_joiners
end
