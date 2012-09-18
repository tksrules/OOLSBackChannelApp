module SessionsHelper

  def sign_in(user)
    cookies.permanent[:username] = user.username
    self.current_user = user
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    @current_user ||= User.find_by_username(cookies[:username])
  end

  def signed_in?
    !current_user.nil?
  end

  def sign_out
    self.current_user = nil
    cookies.delete(:username)
  end
end
