class RoundtablesController < ApplicationController
    # before_filter :authorize, :only => [:new, :show]
    # before_filter :correct_member, :only => [:edit, :update]

    def new
      @roundtable = Roundtable.new
    end

    def create
      @roundtable = current_member.roundtables.build(params[:roundtable])
      if @roundtable.save
        redirect_to @roundtable, notice: "Thank you for creating a roundtable!"
      else
        render "new"
      end
    end

    def show
      @roundtable = Roundtable.find(params[:id])
    end
    
    def index
      @roundtables = Roundtable.all
    end
    
    def destroy
      @roundtable = Roundtable.find(params[:id])
      @roundtable.destroy
      redirect_to root_url
    end
end
