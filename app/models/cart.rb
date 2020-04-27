class Cart < ApplicationRecord
  # a cart belong to its user. not all user can use the same cart.
  belongs_to :user
  # a cart can hold many items with the help of the joiner cart_joiner.
  # which hold the cart_id and the item_id
  has_many :cart_joiners, dependent: :destroy
  has_many :items, through: :cart_joiners
end
