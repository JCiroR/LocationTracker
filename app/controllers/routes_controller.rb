class RoutesController < ApplicationController
    def show
        @route = User.find(params[:user_id]).routes.find(params[:id])
        @points = @route.points
        @lat = 0.0
        @lon = 0.0
        if @points.count > 0 
            @points.each do |p|
              @lat += p[:lat]
              @lon += p[:lon]
            end
            @lat /= (@points.count)
            @lon /= (@points.count)
        else
            @lat = 6.2442
            @lon = -75.5812            
        end        
    end

    def create 
        @route = current_user.routes.create(route_params)
        redirect_to users_path(@user)
    end

    def destroy
        @user = User.find(params[:user_id])
        @route = @user.routes.find(params[:id])
        @route.destroy
        redirect_to users_path(@user)
    end

    private
        def route_params
            params.require(:route).permit(:name)
        end
end
