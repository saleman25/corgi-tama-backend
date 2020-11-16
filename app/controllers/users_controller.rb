class UsersController < ApplicationController
skip_before_action :authorized, only: [:create]

def create 
    @user = User.create(user_params)
    if @user.valid?  
        render json: { userdata: UserSerializer.new(user)}, status: :created
    else
        render json: { errors: "sowwy :3 pwoblem "}, status: :not_acceptable
    end 
end

private 

def user_params 
    params.require(:user).permit(:username, :password)
end 

end 