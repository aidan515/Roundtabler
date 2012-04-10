class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
  def current_member
    @current_member ||= Member.find(session[:member_id]) if session[:member_id]
  end
  helper_method :current_member
  
  def authorize
    redirect_to login_url, alert: "Not authorized" if current_user.nil?
  end 
end
