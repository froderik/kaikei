# Helper methods defined here can be accessed in any controller or view in the application

Kaikei.helpers do
  # def simple_helper_method
  #  ...
  # end
  
  def create_user email
    user = User.new
    user.email = email
    user
  end
  
  
end
