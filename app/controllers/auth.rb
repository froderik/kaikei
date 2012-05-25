Kaikei.controllers :auth do
  
  post [:developer, :callback] do
    session[:user] = find_or_create_user_from_auth_hash
    redirect "/bookkeeping"
  end
  
  
  # get :index, :map => "/foo/bar" do
  #   session[:foo] = "bar"
  #   render 'index'
  # end

  # get :sample, :map => "/sample/url", :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   "Maps to url '/foo/#{params[:id]}'"
  # end

  # get "/example" do
  #   "Hello world!"
  # end

  
end
