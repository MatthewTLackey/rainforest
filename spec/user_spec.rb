require 'spec_helper'

describe User do 
  let!(:user) { build (:user) }
  subject { zombie }
  

  it "should be created with a password" do 
    user.password = ""

     user.should_not be_valid

  end

  it "should have a password" do
    user.password.should_not nil

  end

  it "should a password that matches password_confirmation" do 
    expect user.password == user.password_confirmation
  end

  it "should have a password that matches password_confirmation" do 
    user.password = "a value other than the one entered"

    expect user.password != user.password_confirmation
  end

  it "should have a unique email" do 
    test_val = User.all
    test_val.email.each do |x|
      if x == user.email
        return false
      else
        true
      end
    end

    expect only? == true

  end


end