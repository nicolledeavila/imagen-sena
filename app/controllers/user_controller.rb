class UserController < ApplicationController
    def show
        user = User.find(params[:id])  # Corregido: User con mayúscula
        render json: user
    end    

    def index
        @users = User.all
        render json: @users
    end    
end
