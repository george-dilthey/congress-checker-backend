module Api
    module V1
        class ChecklistsController < ApplicationController

            def show
                checklist = Checklist.find_by(id: params[:id])
                render json: checklist, serializer: ChecklistSerializer
            end
        end
    end

end
