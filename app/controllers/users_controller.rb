class UsersController < ApplicationController

    def create 
        @user = User.create(user_params)
       if @user.save 
        #some type of encription 
        render json: {}
    else
        render json: { errors: "sowwy :3 pwoblem "}
    end 
end

    private 

    def user_params 
        params.require(:user).permit(:username, :password)
    end 

end 