require 'spec_helper'

describe "AuthController" do
  before do
    post "/auth/developer/callback", {:email => "foo.bar@example.com", :name => "Foo Bar"}
  end

  it "should show email address" do
    follow_redirect!
    last_response.should be_ok
    last_response.body.should =~ /foo.bar@example.com/
    last_request.url == '/'
    last_request.session[:user].email.should == 'foo.bar@example.com'
  end
  
  it "should sign me out" do
    get '/sign_out'
    follow_redirect!
    last_response.should be_ok
    last_request.url == '/'
    last_request.session[:user].should == nil
  end
end
