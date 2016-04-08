class EventsController < ApplicationController
  filter_access_to :all
  filter_access_to :show, :edit, :update, :destroy, :attendance_status_check, :attribute_check => true

  def index
    @user = current_user
    @events = Event.all.order("date ASC")
    @mapevents = Event.all
    @hash = Gmaps4rails.build_markers(@mapevents) do |event, marker|
      marker.lat event.location.latitude
      marker.lng event.location.longitude
    end
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
      @event.users << current_user
      redirect_to root_url
    else
      flash[:notice]="Looks like there were some errors. Let's check."
      render :new
    end
  end

  def show
    @user = current_user
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
    if current_user.attending?(@event) ==false
      @event.users << current_user
      redirect_to :back
    else
      @event.users.delete(current_user)
      redirect_to :back
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to :back
    else
      render "edit"
    end
  end

  def destroy
    @event=current_user.events.find(params[:id])
    @event.destroy
    redirect_to root_url
  end

private

  def event_params
    params.require(:event).permit(:name,:organizer,:date,:price,:address,:city,:state,:event_type,:dance_style,:event_image,:description,:url, :facebook_url)
  end


end
