# Helper methods defined here can be accessed in any controller or view in the application

Kaikei.helpers do
  # def simple_helper_method
  #  ...
  # end
  
  def find_or_create_user_from_auth_hash
    email = auth_hash[:info][:email]
    user = CouchPotato.database.first(User.by_email email)
    unless user
      user = User.new
      user.email = email
      CouchPotato.database.save user
    end
    
    user
  end
  
  def auth_hash
    request.env['omniauth.auth']
  end
  
end
