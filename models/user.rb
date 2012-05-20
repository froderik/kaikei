class User < CouchRest::Model::Base
  unique_id :id
  property :email
  
end
