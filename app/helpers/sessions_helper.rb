module SessionsHelper
  
  def sign_in(user)
    cookies.permanent.signed[:remember_token] = [user.id, user.salt]
    current_user = user
    #@current_user = user
  end
  
  def current_user=(user)
    # the above looks wrong, but it is right. It assigns an instance variable @current_user, storing it for later use
    @current_user = user
    
  end
  
  def current_user
    @current_user ||= user_from_remember_token 
    # above: if current user is nil, then assign user_from_remember_token, second time is true so won't hit the database
  end
  
  def signed_in?
    !current_user.nil? #returns true if user is signed in
  end
  
  def sign_out
    cookies.delete(:remember_token)
    current_user = nil
  end
  
  def current_user?(user)
    user == current_user
  end
  
  def deny_access
    store_location
    redirect_to signin_path, :notice => "Please sign in to access this page."
  end

  def store_location
    session[:return_to] = request.fullpath #this stores the requested page
  end
  
  def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    clear_return_to
  end
  
  def clear_return_to
    session[:return_to] = nil
  end
  
  
  private
  
    def user_from_remember_token
      User.authenticate_with_salt(*remember_token)
      #Above, * unwraps the remember_token to get at the two things inside the array
      
    end
  
  def remember_token
    cookies.signed[:remember_token] || [nil, nil]
  end
  
  
end
