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
    if @event.save
      flash[:notice]="You've added a new event!"
      redirect_to root_url
    else
      flash[:notice]="Looks like there were some errors. Let's check."
      render :new
    end
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

  def attendance_status_check
    @event = Event.find(params[:id])
    if @event.attendance_status == false
      @event.update_attributes(attendance_status: true)
      redirect_to root_url
    else
      @event.update_attributes(attendance_status: false)
      redirect_to root_url
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
    params.require(:event).permit(:name,:organizer,:date,:price,:address,:event_type,:dance_style,:event_image)
  end


end
