module Api
    module V1
        class RolesController < ApplicationController

            def index
                #CongressApi.new.get_members(117,'senate')
                roles = Role.all
                render json: roles
            end

            def show
                
            end
            
        end
    end
end
