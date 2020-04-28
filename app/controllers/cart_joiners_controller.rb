class CartJoinersController < ApplicationController

    def index
        @cart_joiners = CartJoiner.all

        render json: @cart_joiners
    end

    def show
        @cart_joiner = CartJoiner.find(params[:id])

        render json: @cart_joiner
    end

    # add item to the cart
    def create
        # find the item with the id sent from params.
        added_item = Item.find(params[:item_id])
        # once the item is found we decrease its quantity
        # since it has been added to the cart
        new_item_quantity = added_item.quantity - 1
        # we then update its quantity
        added_item.update(quantity: new_item_quantity)
        # we merge the cart_joiner params with the logged in user cart id.
        # it enables to add the items to the logged in user cart and not ever user.
        create_cart_joiner = cart_joiner_params.merge({cart_id: logged_user.cart.id})
        # once params are merge we can create the cart joiner instance
        # which holds the item id and the cart id
        cart_joiner = CartJoiner.create(create_cart_joiner)
        # sent the cart_joiner instance back
        render json: cart_joiner
    end

    def destroy
        # find the cart joiner with the id sent from params.
        @cart_joiner = CartJoiner.find(params[:id])
        # once the cart joiner is found we look for the item id
        @removed_id = @cart_joiner.item_id
        @removed_item = Item.find(@removed_id)
        # once the item is found we can increase its quantity
        # since it has been deleted from the cart
        @new_item_quantity = @removed_item.quantity + 1
        # we then update its quantity
        @removed_item.update(quantity: @new_item_quantity)
        # we then delete the cart joiner which will remove the item from the cart
        @cart_joiner.destroy
        # we sent back a message to tell that it has been deleted
        # along with the deleted cart joiner and the item removed.
        render json: {message: "Item has been deleted", cart_joiner: @cart_joiner, item: @removed_item}
    end

    private

    def cart_joiner_params
        params.permit(:item_id, :cart_id)
    end

end