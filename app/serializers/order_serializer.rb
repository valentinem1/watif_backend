class OrderSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :order_joiners

  # has_many :items
  has_many :order_joiners


end
