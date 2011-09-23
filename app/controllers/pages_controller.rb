class PagesController < ApplicationController
  def home
    @title = "Home"
    if signed_in?
      @macropost = Macropost.new
      
    end
    @location_id = 0
    @feed_items = Macropost.page_feed(@location_id).paginate(:page => params[:page] , :per_page => 5)
  end

  def contact
    @title = "Contact"
    
  end

  def about
    @title = "About"
    if signed_in?
      @macropost = Macropost.new
      
    end
    @location_id = 1
    @feed_items = Macropost.page_feed(@location_id).paginate(:page => params[:page], :per_page => 5)
  end
	
	def updates
	  @title = "Updates"
	  if signed_in?
      @macropost = Macropost.new
      
    end
    @location_id = 2
    @feed_items = Macropost.page_feed(@location_id).paginate(:page => params[:page], :per_page => 5)
	end
end
