module Api
    module V1
        class MembersController < ApplicationController

            def index
                #CongressApi.new.get_members(117,'senate')
                members = Member.all
                render json: members
            end

            def show
                member = Member.find_by(mid: params[:mid])
                render json: member, serializer: MemberShowSerializer
            end
            
        end
    end
end
