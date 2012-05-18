require 'spec_helper'

describe "HeartController" do
  before do
    get "/"
  end

  it "returns kaikei" do
    last_response.body.should =~ /kaikei/
  end
end
