class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper #this makes the sessions_helper accessible outside the views (defaults to only being available in views)
end
