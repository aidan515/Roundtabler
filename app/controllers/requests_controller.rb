class RequestsController < ApplicationController
   # before_filter :host_member, :only => [:destroy, :update]
  
  def index
     @requests = Request.all
  end
  
  def new
  end
  
  def create
       if current_member 
        @request = current_member.requests.build(:roundtable_id => params[:roundtable_id])
        if @request.save
          # MemberMailer.seat_request(@request.member, @request.roundtable.member).deliver
          redirect_to root_url, notice: "Thank you for your request, the host has been notified."
        else
          render "new", alert: "Failed to send request."
        end
      # elsif host_member
           # redirect_to root_url, alert: "You cannot request a seat if you are the host."
      else
        redirect_to root_url, alert: "You must log in before requesting a seat."
      end
  end
  
  def show
    @request = Request.find(params[:id])
  end

  def update
    @request = Request.find_by_roundtable_id_and_user_id(params[:roundtable_id],params[:user_id])
    @request.confirm = "True"
    if @request.update_attributes(params[:request])
      redirect_to root_url, notice: 'Request was successfully confirmed.'
    else
      redirect_to @request.roundtable.user.profile, alert: "Failed to confirm request."
    end
  end
  
  def destroy
    @request = Request.find_by_roundtable_id_and_user_id(params[:roundtable_id], params[:user_id])
    @request.destroy
    redirect_to @request.roundtable.user.profile
  end
end
