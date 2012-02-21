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

end
