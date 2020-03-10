class User < ApplicationRecord
    has_secure_password

    validates :username, uniqueness: true
    # validates :username, acceptance: true
    # validates :first_name, acceptance: true
    # validates :last_name, acceptance: true
    # validates :password, acceptance: true
    # validates :address, acceptance: true
    # validates :email, acceptance: true

    has_many :reviews, dependent: :destroy
    has_many :items, through: :reviews
    
    has_one :cart, dependent: :destroy

    has_many :orders, dependent: :destroy
    has_many :cart_joiners, through: :orders
end
