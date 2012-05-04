class EventsController < ApplicationController
  def show
    @roundtable = Roundtable.find(params[:id])
  end
end
