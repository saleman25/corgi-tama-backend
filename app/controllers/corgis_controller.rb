class CorgisController < ApplicationController


def update
    set_corgi
    @corgi.update(corgi_params)
    render json: @corgi
end 

def create
    @corgi = Corgi.new(corgi_params)
    if @corgi.save 
        render json: @corgi
    else
        render json: { errors: "oops something went wrong :3"}
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
    params.require(:corgi).permit(:id, :name, :user_id, :happiness_meter, :hunger_meter, :lonliness_meter)
end 


end 
