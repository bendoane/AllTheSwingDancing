class EventsController < ApplicationController

  def index
    @user = current_user
    @events = Event.all.order("date DESC")
  end

  def new
    @user = current_user
    @event=@user.events.build
  end

  def create
    @event=Event.new(event_params)
    @event.user = current_user
    @event.save!
    redirect_to root_url
  end

  def show
    @event=Event.find(params[:id])
    @events=Event.all
    @location=@event.address
    @hash = Gmaps4rails.build_markers(@event) do |event, marker|
      marker.lat event.location.latitude
      marker.lng event.location.longitude
    end
  end

  def update
  end

  def destroy
    @event=Event.find(params[:id])
    @event.destroy
    redirect_to root_url
  end

  def about
  end


private

  def event_params
    params.require(:event).permit(:name,:organizer,:date,:price,:location,:event_type,:dance_style)
  end


end
