class UserSerializer 

  def initialize(user_object)
    @user = user_object
  end 

  def to_serialized_json 
    options = {only: [:username, :id]}

    @user.to_json(options)
  end 
  
end
