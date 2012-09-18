class SessionsController < ApplicationController
  skip_before_filter :require_login

  def new
    if !signed_in?
      render 'new'
    else
      redirect_to root_path
    end
  end

  def create
      user = User.find_by_username(params[:session][:username])
      if user && user.authenticate(params[:password])
        # Sign the user in and redirect to the user's show page.
        sign_in user
        redirect_to posts_path
      else
        # Create an error message and re-render the signin form.
        flash.now[:error] = 'Invalid email/password combination' # Not quite right!
        render 'new'
      end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end