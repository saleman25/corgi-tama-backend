class CorgisController < ApplicationController

def index
    #render :json => Corgi.all
    @corgis = current_user.corgis
    render json: @corgis
end 

def update
    set_corgi
    @corgi.update(corgi_params)
end 

def create
    @corgi = Corgi.new(corgi_params)
    if @corgi.save 
        render 
    else
        render 
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
