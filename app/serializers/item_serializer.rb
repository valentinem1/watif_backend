class ItemSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :quantity, :price, :image, :url

  has_many :reviews, dependent: :destroy
  has_many :cart_joiners
  
end