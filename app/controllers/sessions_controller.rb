class SessionsController < ApplicationController

    def create
        user = User.find_by_email(params[:email])
        if user && user.authenticate(params[:password])
            if params[:mid]
                member = Member.find(params[:mid])
                user.checklists.first.members << member
            end
            render json: {user: UserSerializer.new(user), token: encode_token(user.id)}
        else
            render json: {errors: "Invalid email and/or password. Please try again."}, status: :forbidden
        end
    end

    def autoLogin
        render json: {user: UserSerializer.new(logged_in_user), token: encode_token(logged_in_user.id)}
    end
end
