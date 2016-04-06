class Role < ActiveRecord::Base
  has_and_belongs_to_many :users
  ROLES = [
    SUPER = "Ben Doane",
    GROUP = "Club or Organization",
    USER = "user"
    ]
end
