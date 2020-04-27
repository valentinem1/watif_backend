class User < ApplicationRecord
    # ensue to encrypt password.
    has_secure_password
    # ensure that the user username isn't duplicated. Can only be used once.
    validates :username, uniqueness: true
    # defines relations between user and item and reviews as well.
    # by doing so the user can acces all its reviews and items 
    # by doing User.first.items => [items1, items2, items3, items4]
    # same for reviews User.first.reviews
    # with has_many relations model get pluralized.
    has_many :reviews, dependent: :destroy
    # allows relations when a many to many relationship occurs.
    has_many :items, through: :reviews
    # dependent: :destroy allows to destroy instances of the cart when deleting the user instance.
    has_one :cart, dependent: :destroy

    has_many :orders, dependent: :destroy
    has_many :cart_joiners, through: :orders
end
