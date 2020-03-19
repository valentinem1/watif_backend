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
        @order = Order.create(user_id: logged_user.id)

        @order_joiner = logged_user.cart.cart_joiners.each do |cart_joiner|
            OrderJoiner.create(order_id: @order.id, item_id: cart_joiner.item.id)
        end
        # byebug
        logged_user.cart.cart_joiners.destroy_all

        render json: {order_id: @order.id, created_at: @order.created_at.strftime("%B, %d, %Y"), items: @order.items}
    end

end