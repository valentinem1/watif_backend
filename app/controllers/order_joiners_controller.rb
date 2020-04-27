class OrderJoinersController < ApplicationController
    

    def index
        @order_joiners = OrderJoiner.all

        render json: @order_joiners
    end

    def show
        @order_joiner = OrderJoiner.find(params[:id])

        render json: @order_joiner
    end

    def create
        # create an order with the logged user id
        @order = Order.create(user_id: logged_user.id)
        # map over the logged user cart to grab every items from it and create an order_joiner out of it.
        # this allows to transfer items from the cart to the order.
        @order_joiner = logged_user.cart.cart_joiners.each do |cart_joiner|
            OrderJoiner.create(order_id: @order.id, item_id: cart_joiner.item.id)
        end
        # once the order_joiners are created it will destroy everything that was in the cart to clear it off.
        logged_user.cart.cart_joiners.destroy_all

        render json: {order_id: @order.id, created_at: @order.created_at.strftime("%B, %d, %Y"), items: @order.items}
    end

end