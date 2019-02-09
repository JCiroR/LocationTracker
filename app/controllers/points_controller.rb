class PointsController < ApplicationController
    def new
    end

    def index
        @user = User.find(params[:user_id])
        @route = @user.routes.find(params[:route_id])
    end

    def create
        @route = User.find(params[:user_id]).routes.find(params[:route_id])
        @point = @route.points.create(point_params)
    end

    private
        def point_params
            params.require(:point).permit(:lat, :lon)
        end
end
