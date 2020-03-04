class CartsController < ApplicationController

    def index
        @carts = Cart.all

        render json: @carts
    end

    def show
        @cart = Cart.find(params[:id])

        render json: @cart
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

end