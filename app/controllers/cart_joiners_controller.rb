class CartJoinersController < ApplicationController

    def index
        @cart_joiners = CartJoiner.all

        render json: @cart_joiners
    end

    def show
        @cart_joiner = CartJoiner.find(params[:id])

        render json: @cart_joiner
    end

    def create
        added_item = Item.find(params[:item_id])
        new_item_quantity = added_item.quantity - 1
        added_item.update(quantity: new_item_quantity)
        
        create_cart_joiner = cart_joiner_params.merge({cart_id: logged_user.cart.id})
        cart_joiner = CartJoiner.create(create_cart_joiner)
        
        render json: cart_joiner
    end

    def destroy
        @cart_joiner = CartJoiner.find(params[:id])
        @removed_id = @cart_joiner.item_id
        @removed_item = Item.find(@removed_id)

        @new_item_quantity = @removed_item.quantity + 1
        @removed_item.update(quantity: @new_item_quantity)

        @cart_joiner = CartJoiner.find(params[:id])
        @cart_joiner.destroy
        
        render json: {message: "Item has been deleted", cart_joiner: @cart_joiner, item: @removed_item}
    end

    private

    def cart_joiner_params
        params.permit(:item_id, :cart_id)
    end

end