require 'spec_helper'

describe "User Model" do
  let(:user) { User.new }
  it 'can be created' do
    user.should_not be_nil
  end
  
  it 'must have an email address' do
    user.should_not be_valid
    user.email = 'foo.bar@eaxmple.org'
    user.should be_valid
  end
end
