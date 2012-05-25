require 'spec_helper'

describe "AuthController" do
  before do
    post "/auth/developer/callback", {:email => "foo.bar@example.com", :name => "Foo Bar"}
  end

  it "should show email address" do
    #last_response["Location"].should == '/'
    follow_redirect!
    last_response.should be_ok
    last_response.body.should =~ /foo.bar@example.com/
  end
end
