class PagesController < ApplicationController

  def home
    @title = "Home"
    if signed_in?
      @micropost = Micropost.new
      @feed_items = current_user.feed.paginate(:page => params[:page])
    # @micropost = Micropost.new if signed_in?
   end
 end


  def contact
    @title = "Contact"
  end
  
  def about
    @title = "About"
  end
 
  def help
    @title = "Help"
  end
  
end
