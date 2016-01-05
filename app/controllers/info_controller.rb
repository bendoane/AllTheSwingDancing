class InfoController < ApplicationController

def about
end

def contact
end

def my_events
  @user = current_user
  @events = @user.events.all
end

end
