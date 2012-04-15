class VenuesController < ApplicationController
    def index
      @venues = Venue.all
    end
    
    def new
      @venue = Venue.new
    end

    def create
      @venue = Venue.new(params[:venue])
      if @venue.save
        redirect_to @venue, notice: "Thank you for signing up as a roundtable venue!"
      else
        render "new"
      end
    end
    
    def show
      @venue = Venue.find(params[:id])
    end

end
