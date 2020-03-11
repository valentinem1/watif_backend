class UsersController < ApplicationController
    before_action :authorized, only: [:persist]

    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def create
        @user = User.create(user_params)
        Cart.create(user_id: @user.id)
        if @user.valid?
            jwt_token = encode_token({user_id: @user.id})
            render json: {user: UserSerializer.new(@user), token: jwt_token}, status: 201
        else
            render json: {error: "Can't be blank"}
        end
    end

    def login
        @user = User.find_by(username: params[:username])

        if @user && @user.authenticate(params[:password])
            jwt_token = encode_token({user_id: @user.id})
            render json: {user: UserSerializer.new(@user), token: jwt_token}
        else
            render json: {error: "Invalid username or password"}
        end
    end

    def persist
        jwt_token = encode_token({user_id: @user.id})
        render json: {user: UserSerializer.new(@user), token: jwt_token}
    end

    private

    def user_params
        params.permit(:first_name, :last_name, :username, :address, :email, :picture, :password)
    end

end
