class OrderJoinerSerializer < ActiveModel::Serializer
  attributes :id, :order_id, :item

  has_many :items
end