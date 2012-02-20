require 'spec_helper'

describe UsersController do
  render_views
  
  describe "GET show" do
    
    before(:each) do
      @user = Factory(:user)
    end
    
    it "should be successful" do
      get :show, :id => @user.id
      response.should be_success
    end
    
    it "should find the right user" do
      get :show, :id => @user
      assigns(:user) == @user #assigns(:user) is a getter which keys into a map off all assigned instance variables
    end
  end
    
    
  
  describe "GET 'new'" do
    it "should be successful" do
      get :new # was 'new', but hartl changed to :new because prefers using symbols.
      response.should be_success
    end
    
    it "should have the right title" do
      get :new # was 'new', but hartl changed to :new because prefers using symbols.
      response.should have_selector('title', :content => "Sign up!")
    end
  end

end
