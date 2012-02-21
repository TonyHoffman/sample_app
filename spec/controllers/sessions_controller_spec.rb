require 'spec_helper'

describe SessionsController do
  render_views #this enable use of the "have_selector" tag below

  describe "GET 'new'" do
    it "should be successful" do
      get :new
      response.should be_success
    end
  
    it "should have the right title" do
      get :new # was 'new', but hartl changed to :new because prefers using symbols.
      response.should have_selector('title', :content => "Sign in!")
    end
  end
  
  describe "Post create" do
    
    describe "failure" do
      
      before(:each) do
        @attr = { :email => "", :password => ""}
      end
      
      
      it "should re-render the new page" do
        post :create, :session => @attr
        response.should have_selector("title", :content => "Sign in!")
      end
      
      it "should have an error message" do
        post :create, :session => @attr
        flash.now[:error].should =~ /invalid/i
      end
      
    end
  end

end
