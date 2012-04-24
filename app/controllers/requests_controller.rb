class RequestsController < ApplicationController
  def index
     @requests = Request.all
  end
  
  def new
  end
  
  def create
    @request = current_member.requests.build(:roundtable_id => params[:roundtable_id])
    if @request.save
      redirect_to root_url, notice: "Thank you for your request, the host has been notified."
    else
      render "new", alert: "Failed to send request."
    end
  end
  
  def show
    @request = Request.find(params[:id])
  end

  def update
    @request = Request.find_by_roundtable_id(params[:roundtable_id])
    @request.confirm = "True"
    if @request.update_attributes(params[:request])
      redirect_to root_url, notice: 'Request was successfully confirmed.'
    else
      redirect_to @request.roundtable.member.profile, alert: "Failed to confirm request."
    end
  end
  
  def destroy
    @request = Request.find(params[:id])
    @request.destroy
    redirect_to current_user
  end
end
