class InfoController < ApplicationController

def about
end

def contact
end

def my_events
  @events = current_user.events.all.order("date ASC")
end

end
