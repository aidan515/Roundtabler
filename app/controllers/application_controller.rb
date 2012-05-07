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
  
  def current_user
    @current_user ||= User.find_by_auth_token!(cookies[:auth_token]) if (cookies[:auth_token])
  end
  helper_method :current_user
  
  def current_user?(user)
    user == current_user
  end
  
  def authorize
    redirect_to login_url, alert: "Please sign in to view this page" if current_member.nil?
  end 
  
  def correct_member
    @profile = Profile.find(params[:id])
    @user = @profile.user
    redirect_to root_path, alert: "You do not have access to this page" unless current_user?(@user)
  end
  helper_method :correct_member
  
  # def confirmed_guests
  #   @confirmed_guests ||= Request.find_all_by_roundtable_id_and_confirm(params[:roundtable_id], "True") 
  # end
  # helper_method :confirmed_guests
  
  # def host_member
  #     @roundtable = Roundtable.find(params[:id])
  #     @member = @roundtable.member
  #   end
  #   helper_method :host_member
end
