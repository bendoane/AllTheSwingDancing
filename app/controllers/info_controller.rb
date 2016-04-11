class InfoController < ApplicationController

def about
end

def contact
end

def my_events
  @events = current_user.events.all.order("date ASC")
  @nearest_event = @events.first
  @events = @events.paginate(:page => params[:page], :per_page => 4)
end

end
