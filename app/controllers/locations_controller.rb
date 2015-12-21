class LocationsController < ApplicationController

  def index
    if params[:search].present?
    @locations = Location.near(params[:search], 50, :order => :distance)
    else
      @locations = Location.all
    end
  end

  def show
    @event = Event.first
    @location=@event.address
  end


end
