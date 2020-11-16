class CorgiSerializer
  
  def initialize(corgi_object)
    @corgi = corgi_object 
  end 

  def to_serialized_json
    options = {only: []}
    
    @corgi.to_json(options)
  end 

end
