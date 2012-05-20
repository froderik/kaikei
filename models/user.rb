class User
  include CouchPotato::Persistence

  property :email, :type => String
  
  view :by_email, :key => :email
end
