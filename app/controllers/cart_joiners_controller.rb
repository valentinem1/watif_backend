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

        logged_user_cart_joiner = logged_user.cart.cart_joiners
        # byebug
        item = logged_user_cart_joiner.find_by(item_id: params[:item_id])
        
        if item.nil? 
            new_item_quantity = item.quantity - 1
            item.update(quantity: new_item_quantity)
            
            create_cart_joiner = cart_joiner_params.merge({cart_id: logged_user.cart.id})
            cart_joiner = CartJoiner.create(create_cart_joiner)
        else
            nil
        end

        # render json: add_joiner


        # @added_item = Item.find(params[:item_id])
        
        # @new_item_quantity = @added_item.quantity - 1
        # @added_item.update(quantity: @new_item_quantity)
        
        # create_cart_joiner = cart_joiner_params.merge({cart_id: logged_user.cart.id})
        # @cart_joiner = CartJoiner.create(create_cart_joiner)

        # functionality to increase quantity in cart without duplicating an item
        # check_item = logged_user.cart.cart_joiners.any?{|cart_joiner| cart_joiner[:item_id] === params[:item_id]}
        
        # if(check_item)

        #     @cart_joiner = CartJoiner.find_by(item_id: params[:item_id])
            
        #     @new_cart_quantity = @cart_joiner.quantity + 1
        #     @cart_joiner.update(quantity: @new_cart_quantity)
            
        #     render json: @cart_joiner
        # else
        #     create_cart_joiner = cart_joiner_params.merge({cart_id: logged_user.cart.id})
        #     @cart_joiner = CartJoiner.create(create_cart_joiner)

        # end
        
        render json: cart_joiner
    end

    def destroy
        # functionality to decrease item quantity in cart without deleting all of them
        # if item already exists in cart_joiner cart_joiner.quantity -= 1
        # else destroy 
        
        # @cart_joiner = CartJoiner.find(params[:id]).item_id
        @cart_joiner = CartJoiner.find(params[:id])
        @removed_id = @cart_joiner.item_id
        # @removed_id = CartJoiner.find(params[:id]).item_id
        @removed_item = Item.find(@removed_id)
        
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