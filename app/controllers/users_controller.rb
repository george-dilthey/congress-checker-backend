class UsersController < ApplicationController

    def create
        user = User.new(user_params)
        if user.save
            user.checklists.create
            if params[:mid]
              member = Member.find(params[:mid])
              user.checklists.first.members << member
            end
            render json: {user: UserSerializer.new(user), token: encode_token(user.id)}
        else
          render json: {errors: user.errors.full_messages.to_sentence}, status: :unprocessable_entity
        end
    end
  
    private
  
    def user_params
      params.permit(:email, :first_name, :last_name, :password)
    end

    def member_params
      params.permit(:mid)
    end
end
