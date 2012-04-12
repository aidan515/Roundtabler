class ProfilesController < ApplicationController
  #before_filter :authorize, :only => [:show]
  
  def new
    @profile = Profile.new
  end

  def edit
  end

  def create
    @profile = Profile.new(params[:profile])
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
