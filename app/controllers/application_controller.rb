class ApplicationController < ActionController::Base
    skip_forgery_protection
    helper_method :current_user 
    helper_method :require_user

    def current_user 
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
        rescue ActiveRecord::RecordNotFound
    end
    
    def require_user 
        redirect_to '/login' unless current_user 
    end
end
