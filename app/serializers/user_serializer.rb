class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :address, :email, :picture, :orders

  # has_many :orders
  has_many :reviews
  has_one :cart
  
  # def orders
  #   self.object.orders.map do |order|
  #     [id: order.id, items: order.items]
  #   end
  # end
  
  def orders
    self.object.orders.map do |order|
      {order_id: order.id, created_at: order.created_at, items: order.items}
    end
  end

  def cart
    self.object.cart.cart_joiners.map do |cart_joiner|
      cart_joiner
    end
  end

end
