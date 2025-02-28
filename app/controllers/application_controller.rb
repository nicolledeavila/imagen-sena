class ApplicationController < ActionController::API
    def show
        user = user.find(params[:id])
        render json: user
    end
    def index
        users = Person.all
        render json: users
    end        
end
