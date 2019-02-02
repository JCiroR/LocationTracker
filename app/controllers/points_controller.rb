class PointsController < ApplicationController
    def new
    end

    def index
    end

    def create
        @user = User.find(params[:user_id])
        @point = @user.points.create(point_params)
        redirect_to users_path(@user)
    end

    private
        def point_params
            params.require(:point).permit(:lat, :lon)
        end
end
