class Session < Authlogic::Session::Base
  authenticate_with User

  def self.validators_on(args)
    User.validators_on(:login, :password)
  end
end
