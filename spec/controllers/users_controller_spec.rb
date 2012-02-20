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
    
    it "should have the right title" do
      get :show, :id => @user
      response.should have_selector('title', :content => @user.name)
    end
    
    it "should have the user's name" do
      get :show, :id => @user
      response.should have_selector('h1', :content => @user.name)
    end
    
    it "should have a profile image" do
      get :show, :id => @user
      response.should have_selector("h1>img", :class => "gravatar") #the > says that the image is inside the h1
    end
    
    it "should have the right path" do
      get :show, :id => @user
      response.should have_selector('td>a', :content => user_path(@user),
                                            :href   => user_path(@user))
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
