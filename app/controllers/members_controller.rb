class MembersController < ApplicationController
  def new
    @member = Member.new
  end

  def create
    @member = Member.new(params[:member])
    if @member.save
      cookies[:auth_token] = @member.auth_token
      redirect_to root_url, notice: "Thank you for signing up!"
    else
      render "new"
    end
  end
  
end
