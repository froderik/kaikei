class User
  include CouchPotato::Persistence

  property :email, :type => String
  
  validates_presence_of :email
  
  view :by_email, :key => :email
end
