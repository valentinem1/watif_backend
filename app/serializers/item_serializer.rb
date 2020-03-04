class ItemSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :quantity, :price

  has_many :reviews, dependent: :destroy
  has_many :cart_joiners

  # has_many :order_joiners
  # has_many :orders, through: :order_joiners
  
end