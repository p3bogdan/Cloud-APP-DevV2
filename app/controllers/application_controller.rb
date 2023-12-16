class ApplicationController < ActionController::Base

  include UsersHelper

  def authenticate_user!
    if !logged_in?
      redirect_to login_path
    end
  end
  
end
