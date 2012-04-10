class SessionsController < ApplicationController
  def new
  end
  
  def create
    member = Member.find_by_email(params[:session][:email])
    if member && member.authenticate(params[:session][:password])
      if params[:remember_me]
        cookies.permanent[:auth_token]= member.auth_token
      else
        cookies[:auth_toke] = member.auth_token
      end
      cookies.permanent[:auth_token] = member.auth_token
      redirect_to root_url, notice: "Logged in!"
    else
      flash.now.alert = "Email or password is invalid."
      render "new"
    end 
  end
  
  def destroy
    cookies.delete(:auth_token)
    redirect_to root_url, notice: "Logged out!"
  end
end
