class DescriptionsController < ApplicationController
  before_filter :authorize, :only => [:new, :show]
  before_filter :correct_venue, :only => [:edit, :update]
  
  def new
    @description = Description.new
  end

  def edit
    @description = Description.find(params[:id])
  end

  def update
    @description = Description.find(params[:id])
    if @description.update_attributes(params[:description])
      redirect_to @description, notice: 'Profile was successfully updated.'
    else
      render action: "edit"
    end
  end

  def create
    @description = current_member.build_description(params[:description])
    if @description.save
      redirect_to @description, notice: "Thank you for completing your profile!"
    else
      render "new"
    end
  end

  def show
    @description = Description.find(params[:id])
  end
end
