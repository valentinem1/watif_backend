class Order < ApplicationRecord
  belongs_to :user
  
  has_many :order_joiners, dependent: :destroy
  has_many :items, through: :order_joiners
end
