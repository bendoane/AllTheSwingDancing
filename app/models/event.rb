class Event < ActiveRecord::Base
  belongs_to :user
  has_one :location

  after_save do |event|
    event.location = Location.new
    event.location.address = event.address
    event.location.save!
  end
end
