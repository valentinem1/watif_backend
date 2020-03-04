class OrderJoinersController < ApplicationController
    

    def index
        @order_joiners = OrderJoiner.all

        render json: @order_joiners
    end

    def show
        @order_joiner = OrderJoiner.find(params[:id])

        render json: @order_joiner
    end

     # create OrderJoiner once click on checkout button
    # it will create an instance of OrderJoiner for each CartJoiner instances
    # def create
    #     order = Order.create(params)
    #     user.cart.cart_joiners.each do |cj|
    #         OrderJoiner.create(order: order.id, item_id: cj.item.id, quantity: cj.quantity)
    #     end

    #     user.cart.cart_joiners.destroy_all

    # end

    def create
        @order = Order.create(user_id: logged_user.id)

        @order_joiner = logged_user.cart.cart_joiners.each do |cart_joiner|
            OrderJoiner.create(order_id: @order.id, item_id: cart_joiner.item.id)
        end

        logged_user.cart.cart_joiners.destroy_all

        render json: @order_joiner
    end

end