class Event < ActiveRecord::Base
  has_many :attendances
  has_many :users, through: :attendances
  has_one :location, dependent: :destroy
  belongs_to :user
  validates_presence_of :name,:organizer,:price,:address, :city, :state, :event_type,:dance_style, :description, :url, :facebook_url
  validates_uniqueness_of :name, :case_sensitive => false, :message => "This event seems to exist already..."
  validate :date_cannot_be_in_the_past
  validates :price, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }, :numericality => {:greater_than => -1}
  attachment :event_image
  validates_format_of :url, :facebook_url, :with => /\Ahttp(|s):\/\//
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
    unless self.facebook_url =~ /\Ahttp(|s):\/\//
      self.facebook_url = "http://" + self.facebook_url
    end
  end

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end

  after_save do |event|
    event.location = Location.new
    event.location.address = event.address + " " + event.city + "," + event.state
    event.location.save!
  end




end
