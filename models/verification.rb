class Verification
  include CouchPotato::Persistence
  
  property :text, :type => String
  property :turnover, :type => Fixnum
  
  view :all, :key => :id
end