class VenuesController < ApplicationController
    
    def new
      @venue = Venue.new
    end

    def create
      @venue = Venue.new(params[:venue])
      if @venue.save
        cookies[:auth_token] = @venue.auth_token
        redirect_to new_description_path, notice: "Thank you for signing up as a roundtable venue!"
      else
        render "new"
      end
    end
    
    def edit
      @venue = Venue.find(params[:id])
    end
    
    def update
      @venue = Venue.find(params[:id])
      if @venue.update_attributes(params[:venue])
        redirect_to @venue, notice: 'Profile was successfully updated.'
      else
        render action: "edit"
      end
    end

end
