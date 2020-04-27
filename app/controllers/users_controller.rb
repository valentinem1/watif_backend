class UsersController < ApplicationController
    # will call the authorized method in application_controller before anything else happens in the app.
    # this locks down the app. only persist will be read.
    before_action :authorized, only: [:persist]

    # allows to display all users.
    def index
        @users = User.all
        render json: @users
    end

    # allows to display an instance of a user.
    def show
        @user = User.find(params[:id])
        render json: @user
    end
    
    
    
    def create
        # create user with the params passed down from fetch in front end.
        @user = User.create(user_params)
        Cart.create(user_id: @user.id)
        # first check if the user created is valid.
        if @user.valid?
            # if valid it will issue a new token.
            jwt_token = encode_token({user_id: @user.id})
            # then serialize the new user to be able to render the desired attributes put in the serializer.
            # send back json to front end with the new user instance and its token.
            render json: {user: UserSerializer.new(@user), token: jwt_token}, status: 201
        else
            # if not valid which most likely means that the user didn't fill out all the input fields in the form. since not all informations are provided it cannot pass the params.
            # it will then send back an error to the front end.
            render json: {error: "Can't be blank"}
        end
    end

    def login
        # look for the user that matches the username send in params from the front end.
        @user = User.find_by(username: params[:username])
        # check if the user instance and the password matches
        if @user && @user.authenticate(params[:password])
            # if yes it will issue a new token.
            jwt_token = encode_token({user_id: @user.id})
            # and serialize the user to inherit and display the desired attributes put in the serializer.
            # send back json to front end with the user instance and its token.
            render json: {user: UserSerializer.new(@user), token: jwt_token}
        else
            # else render an error message.
            render json: {error: "Invalid username or password"}
        end
    end

    def persist
        # to persist the user we need to issue a token
        jwt_token = encode_token({user_id: @user.id})
        # and serialize the user and sent it back as json to the front end.
        render json: {user: UserSerializer.new(@user), token: jwt_token}
    end

    def destroy
        # find the user with the id sent from the params.
        @user = User.find(params[:id])
        # once found it destroys it
        @user.destroy
        # since the instance is deleted it only sent a message back.
        render json: {message: "Account has been deleted"}
    end

    private
    # params check the attributes needed for creating a user.
    def user_params
        params.permit(:first_name, :last_name, :username, :address, :email, :picture, :password)
    end

end
