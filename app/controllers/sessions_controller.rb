class SessionsController < ApplicationController

    def create
        user = User.find_by_email(params[:email])
        if user && user.authenticate(params[:password])
            render json: {user: UserSerializer.new(user), token: encode_token(user.id)}
        else
            render json: {errors: "Invalid email and/or password. Please try again."}, status: :forbidden
        end
    end
end
