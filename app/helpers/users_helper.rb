module UsersHelper

  def log_in(user)
    session[:user_id] = user.id
  end

  # returns the currently logged_in user
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # returns true if the user is logged in, false otherwise
  def logged_in?
    !current_user.nil?
  end

  # logs out the current user
  def log_out
    user = User.find_by(id: session[:user_id])
    session.delete(:user_id)
    @current_user = nil
  end

end
