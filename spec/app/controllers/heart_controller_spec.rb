require 'spec_helper'

describe "HeartController" do
  before do
    get "/"
  end

  it "returns kaikei" do
    last_response.body.should =~ /kaikei/
  end
  
  it "should not show sign out when not signed in" do
    last_response.body.should_not =~ /sign out/
  end
end
