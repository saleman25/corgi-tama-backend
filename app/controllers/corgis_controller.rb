class CorgisController < ApplicationController

def index
    #render :json => Corgi.all
    @corgis = Corgi.all
    render json: CorgiSerializer.new(@corgi).to_serialized_json
end 

def update
    set_corgi
    @corgi.update(corgi_params)
    render json: CorgiSerializer.new(corgi).to_serialized_json
end 

def create
    @corgi = Corgi.new(corgi_params)
    corgi.user = current_user
    if @corgi.save 
        render json: CorgiSerializer.new(corgi).to_serialized_json
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
