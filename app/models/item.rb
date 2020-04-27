class Item < ApplicationRecord
    # declare relations between item and users.
    # an item can have many reviews
    # and any users can buy it
    has_many :reviews, dependent: :destroy
    has_many :users, through: :reviews
    # as well the item can have many cart joiner which join the item and the cart.
    # the cart can hold many items with the help of the cart_joiner which holds the item_id and the cart_id to create the relation between the 2.
    has_many :cart_joiners, dependent: :destroy
    has_many :carts, through: :cart_joiners
    # same as the cart here.
    has_many :order_joiners, dependent: :destroy
    has_many :orders, through: :order_joiners

end