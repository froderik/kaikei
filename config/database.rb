case Padrino.env
  when :development then db_name = 'kaikei_development'
  when :production  then db_name = 'kaikei_production'
  when :test        then db_name = 'kaikei_test'
end

CouchPotato::Config.database_name = db_name
# or CouchPotato::Config.database_name = http://<host>:<port>/db_name
# or CouchPotato::Config.database_name = http://<username>:<password>@<host>:<port>/db_name

# language for design documents - defaulting to :javascript
# CouchPotato::Config.default_language = :erlang

# views in own design documents - defaulting to false
# CouchPotato::Config.split_design_documents_per_view = true