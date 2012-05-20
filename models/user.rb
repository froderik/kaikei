class User < CouchRest::Model::Base
  unique_id :id
  property :email
  
  def User::find_or_create_from auth_hash
    user = User.new
    user.email = auth_hash[:info][:email]
    user
  end
  
end
