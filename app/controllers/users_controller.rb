class UsersController < ApplicationController


def create 
    @user = User.create(name: params[:user])
    if @user.save  
        render @user
    else
        render json: { errors: "sowwy :3 pwoblem "}, status: :not_acceptable
    end 
end


end 