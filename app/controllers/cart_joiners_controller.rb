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
        # find the item in the logged_user cart_joiner 
        # logged_user.cart.cart_joiners.any?{|h| h[:item_id] === params[:item_id]} ==> true
        #  if true increment quantity
        # else return the item
        # byebug

        # find the item in the logged_user cart_joiner
        # if it exist count how many times it is in cart_joiner
        @added_item = Item.find(params[:item_id])
        
        @new_item_quantity = @added_item.quantity - 1
        @added_item.update(quantity: @new_item_quantity)
        
        create_cart_joiner = cart_joiner_params.merge({cart_id: logged_user.cart.id})
        @cart_joiner = CartJoiner.create(create_cart_joiner)
        
        # @same_item_array = CartJoiner.all.map do |cart_joiner|
        #     cart_joiner.item_id === @added_item
        # end
        
        # @item_quantity_in_cart_joiner = @same_item_array.count
        # byebug
        # check_item = logged_user.cart.cart_joiners.any?{|cart_joiner| cart_joiner[:item_id] === params[:item_id]}
        
        # if(check_item)

        #     @cart_joiner = CartJoiner.find_by(item_id: params[:item_id])
            
        #     # @new_cart_quantity = @cart_joiner.quantity + 1
        #     # @cart_joiner.update(quantity: @new_cart_quantity)
        #     # byebug
        # else
        #     create_cart_joiner = cart_joiner_params.merge({cart_id: logged_user.cart.id})
        #     @cart_joiner = CartJoiner.create(create_cart_joiner)
        # end
        
        render json: @cart_joiner
    end

    def destroy
        # if item already exists in cart_joiner cart_joiner.quantity -= 1
        # else destroy 
        
        # @cart_joiner = CartJoiner.find(params[:id]).item_id
        # byebug
        @cart_joiner = CartJoiner.find(params[:id])
        @removed_id = @cart_joiner.item_id
        # @removed_id = CartJoiner.find(params[:id]).item_id
        # byebug
        @removed_item = Item.find(@removed_id)
        
        # byebug
        # if(@removed_id && @cart_joiner)

            # @new_cart_quantity = @cart_joiner.quantity - 1

            # @cart_joiner.update(quantity: @new_cart_quantity)

            @new_item_quantity = @removed_item.quantity + 1
            @removed_item.update(quantity: @new_item_quantity)

        # elsif(@cart_joiner.quantity = 1)
            @cart_joiner = CartJoiner.find(params[:id])
            @cart_joiner.destroy
        # end
        
        render json: {message: "Item has been deleted", cart_joiner: @cart_joiner, item: @removed_item}
    end

    private

    def cart_joiner_params
        params.permit(:item_id, :cart_id)
    end

end