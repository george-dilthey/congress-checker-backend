module Api
    module V1
        class ChecklistsController < ApplicationController

            def show
                checklist = Checklist.find_by(id: params[:id])
                render json: checklist, serializer: ChecklistSerializer
            end

            def update
                checklist = Checklist.find_by(id: params[:id])
                member = Member.find_by(mid: params[:mid])
                if checklist && member
                    if params[:removeMember]
                        checklist.members.delete(member)
                    else
                        checklist.members << member
                    end
                    render json: {user: UserSerializer.new(checklist.user), token: encode_token(checklist.user.id)}
                else
                    render json: {errors: user.errors.full_messages.to_sentence}, status: :unprocessable_entity
                end    
            end
        end
    end

end
