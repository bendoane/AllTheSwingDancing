class User < ActiveRecord::Base
  has_many :attendances
  has_many :events, through: :attendances, dependent: :destroy
  has_many :made, :class_name => "Event"
  serialize :omniauth_data, JSON

  #For Authlogic
  acts_as_authentic do |configuration|
    configuration.session_class = Session
    configuration.ignore_blank_passwords = true
  end
  #For OmniAuth
  has_many :authorizations, :dependent => :destroy
  #Authentications
  def self.create_from_omniauth_data(omniauth_data)
    user = User.new(
      :first_name => omniauth_data['info']['name'].to_s.downcase,
      :email => omniauth_data['info']['email'].to_s.downcase
      )
    user.omniauth_data = omniauth_data.to_json #shove OmniAuth::AuthHash as json data to be parsed later!
    user.save(:validate => false) #create without validations because most of the fields are not set.
    user.reset_persistence_token! #set persistence_token else sessions will not be created
    user
  end

  def full_name
    return "#{self.first_name} #{self.last_name}"
  end

  def attending?(event)
    self.events.include?(event)
  end


end
