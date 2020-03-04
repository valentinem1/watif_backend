class Item < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :users, through: :reviews

    has_many :cart_joiners, dependent: :destroy
    has_many :carts, through: :cart_joiners

    has_many :order_joiners, dependent: :destroy
    has_many :orders, through: :order_joiners

end