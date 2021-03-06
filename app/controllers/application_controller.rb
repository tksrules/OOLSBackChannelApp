class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  before_filter :require_login

  private

  def require_login
    unless current_user
      redirect_to signin_path
    end
  end

end
