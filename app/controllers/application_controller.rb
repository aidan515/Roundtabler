class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
  def current_member
    @current_member ||= Member.find_by_auth_token!(cookies[:auth_token]) if (cookies[:auth_token])
  end
  helper_method :current_member
  
  def current_member?(member)
    member == current_member
  end
  
  def authorize
    redirect_to login_url, alert: "Please sign in to view this page" if current_member.nil?
  end 
  
  def correct_member
    @profile = Profile.find(params[:id])
    @member = @profile.member
    redirect_to root_path, alert: "You do not have access to this page" unless current_member?(@member)
  end
  helper_method :correct_member
end
