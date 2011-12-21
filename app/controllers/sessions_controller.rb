class SessionsController < ApplicationController
  def new
	end

	def create
    user = User.from_omniauth(env["omniauth.auth"])
		if params[:remember_me]
			cookies.permanent[:auth_token] = user.auth_token
		else
			cookies[:auth_token] = user.auth_token
		end
    redirect_to root_url, notice: "Signed in!"
  end

  def destroy
    cookies.delete(:auth_token)
    redirect_to root_url, notice: "Signed out!"
  end

  def failure
    redirect_to getstarted_url, notice: "The Email or Password was wrong!"
  end
end
