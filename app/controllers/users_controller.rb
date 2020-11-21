class UsersController < ApplicationController


def create
    @user = User.create(name: params[:user])
    
    if @user.save  
      
        render json: @user
    else
        render json: { errors: "sowwy :3 pwoblem "}
    end 
end


end 