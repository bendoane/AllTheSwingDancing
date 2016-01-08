class Event < ActiveRecord::Base
  has_many :attendances
  has_many :users, through: :attendances
  has_one :location, dependent: :destroy
  belongs_to :user
  validates_presence_of :name,:organizer,:price,:address,:event_type,:dance_style, :description, :url
  validate :date_cannot_be_in_the_past
  validates :price, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }, :numericality => {:greater_than => -1}
  attachment :event_image
  validates_format_of :url, :with => /\Ahttp(|s):\/\//
  before_validation :add_http

  def date_cannot_be_in_the_past
    errors.add(:date, "Events cannot be made for the past") if
      !date.blank? and date < Date.today
    errors.add(:date, "Events must have a date") if
      date == nil
  end

  def add_http
    unless self.url =~ /\Ahttp(|s):\/\//
      self.url = "http://" + self.url
    end
  end

  after_save do |event|
    event.location = Location.new
    event.location.address = event.address
    event.location.save!
  end




end
