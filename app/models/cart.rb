class Cart < ApplicationRecord
  belongs_to :user

  has_many :cart_joiners, dependent: :destroy
  has_many :items, through: :cart_joiners
end
