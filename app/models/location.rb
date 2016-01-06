class Location < ActiveRecord::Base
  belongs_to :event
  geocoded_by :address
  after_validation :geocode

end
