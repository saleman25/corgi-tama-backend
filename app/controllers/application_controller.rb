class ApplicationController < ActionController::API

    private 
    
    def logged_in?
        !!current_user
    end 

    def current_user
        User.find_by(id: session[:user_id])
    end 

    def authorized 
        render json: {errors: "Pwease log in :3"}, status: :unauthorized unless logged_in?

end
