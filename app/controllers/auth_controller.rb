class AuthController < ApplicationController 
skip_before_action :authorized, only: [:create]

def create
    user = User.find_by(username: user_params[:username])
    if user && user.authenticate(user_params[:password])
        render json: {userdata: UserSerializer.new(user)}, status: :accepted
    else 
        render json: { errors: "Invalid username/password :3"}, status: :unauthorized
    end 
end 

private

def user_params
    params.require(:user).permit(:username, :password)
end 

end 
