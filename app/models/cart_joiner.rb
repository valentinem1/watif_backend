class CartJoiner < ApplicationRecord
  # declare the relation between the cart and the item
  belongs_to :cart
  belongs_to :item
end


