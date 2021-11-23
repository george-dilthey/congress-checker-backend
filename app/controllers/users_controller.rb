class UsersController < ApplicationController

    def create
        user = User.new(user_params)
        if user.save
          render json: user
        else
          render json: {errors: user.errors.full_messages.to_sentence}, status: :unprocessable_entity
        end
    end
  
  
  
    private
  
    def user_params
      params.permit(:email, :first_name, :last_name, :password)
    end
end
