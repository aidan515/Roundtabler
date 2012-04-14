class ProfilesController < ApplicationController
  before_filter :authorize, :only => [:new, :show]
  before_filter :correct_member, :only => [:edit, :update]
  
  def new
    @profile = Profile.new
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    if @profile.update_attributes(params[:profile])
      redirect_to @profile, notice: 'Profile was successfully updated.'
    else
      render action: "edit"
    end
  end
  
  def create
    @profile = current_member.build_profile(params[:profile])
    if @profile.save
      redirect_to @profile, notice: "Thank you for completing your profile!"
    else
      render "new"
    end
  end
  
  def show
    @profile = Profile.find(params[:id])
  end
end
