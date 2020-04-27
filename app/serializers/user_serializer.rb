class UserSerializer < ActiveModel::Serializer
  # attributes to be serialized. basically attributes to be rendered in the api.
  attributes :id, :first_name, :last_name, :username, :address, :email, :picture, :orders
  # associations that should be rendered
  has_many :reviews
  has_one :cart
  
  # custom method to be able to access the orders for the user. 
  # it will format it to show the orders with only the id, when it was created
  # and the items in that order
  def orders
    self.object.orders.map do |order|
      {order_id: order.id, created_at: order.created_at.strftime("%B, %d, %Y"), items: order.items}
    end
  end

  # custom method which will able to show the the item in the cart.
  def cart
    self.object.cart.cart_joiners.map do |cart_joiner|
      cart_joiner
    end
  end

end
