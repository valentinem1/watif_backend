class User < ApplicationRecord
    has_secure_password

    validates :username, uniqueness: true

    has_many :reviews, dependent: :destroy
    has_many :items, through: :reviews
    
    has_one :cart, dependent: :destroy

    has_many :orders, dependent: :destroy
    has_many :cart_joiners, through: :orders
end
