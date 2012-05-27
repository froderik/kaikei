Kaikei.controllers :about do
  get :index do
    render 'about/index', :layout => 'layout'
  end
end