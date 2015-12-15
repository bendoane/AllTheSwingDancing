class EventsController < ApplicationController

  def index
    @user = current_user
    @events = Event.all
  end

  def new
    @event=Event.new
  end

  def create
    @event=Event.new(event_params)
    @event.user_id = current_user
    @event.save!
    redirect_to root_url
  end

  def show
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
