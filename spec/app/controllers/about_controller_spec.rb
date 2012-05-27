require 'spec_helper'

describe "AboutController" do
  it "should credit folks" do
    get "/about"
    last_response.should be_ok
    last_response.body.should =~ /padrino/
    last_response.body.should =~ /sinatra/
    last_response.body.should =~ /couch/
    last_response.body.should =~ /CJ Isherwood/  # money picture
  end
end
