class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
  def current_member
    @current_member ||= Member.find_by_auth_token!(cookies[:auth_token]) if (cookies[:auth_token])
  end
  helper_method :current_member
  
  def authorize
    redirect_to login_url, alert: "Please sign in to view this page" if current_member.nil?
  end 
end
