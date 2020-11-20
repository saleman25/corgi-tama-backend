class CorgisController < ApplicationController


def update
    set_corgi
    @corgi.update(corgi_params)
    render @corgi
end 

def create
    @corgi = Corgi.new(corgi_params)
    corgi.user = current_user
    if @corgi.save 
        render @corgi
    else
        render json: {errors: "oops something went wrong :3"}, status: :not_acceptable
    end 

end 

def destroy
    set_corgi
    @corgi.destroy 
end 

private 

def set_corgi 
    @corgi = Corgi.find_by(id: params[:id])
end 

def corgi_params 
    params.require(:corgi).permit(:id, :name, :user_id, :happiness_meter, :hunger_meter, :lonlieness_meter, :evolution_countdown, :corgi_type)
end 


end 
