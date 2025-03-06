class UserController < ApplicationController
    def show
        user = user.find(params[:id])
        render json: user
    end    
    def index
        users = User.all
        render json:users
    end    
end
