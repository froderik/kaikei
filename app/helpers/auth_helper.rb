# Helper methods defined here can be accessed in any controller or view in the application

Kaikei.helpers do
  # def simple_helper_method
  #  ...
  # end
  
  def auth_hash
    request.env['omniauth.auth']
  end
  
end
