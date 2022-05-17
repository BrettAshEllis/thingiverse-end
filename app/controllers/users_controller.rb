class UsersController < ApplicationController 
    def index
        render status: :ok, json: User.all
    end
    def create
        user=User.new(user_params)
        if user.save
            render status: :ok, json: user
        else 
            render status: :unproccessable_entity, json: user.errors
        end
    end
    def user_params
        params.permit(:username, :password)
    end
end