class User < ActiveRecord::Base
  acts_as_authentic do |configuration|
    configuration.session_class = Session
  end
  has_many :events, dependent: :destroy
end
