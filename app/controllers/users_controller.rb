class UsersController < ApplicationController
    before_action :require_user

    def index
        @points = current_user.points
        @lat = 6.2442
        @lon = -75.5812
        if @points.count > 0 
            @points.each do |p|
              @lat += p[:lat]
              @lon += p[:lon]
            end
            @lat /= (@points.count + 1)
            @lon /= (@points.count + 1)
        end
    end

    def create 
        @user = User.new(user_params) 
        if @user.save 
          session[:user_id] = @user.id 
          redirect_to '/' 
        else 
          redirect_to '/signup' 
        end 
    end

private

    def user_params
        params.require(:user).permit(:user_name, :password)
    end
end