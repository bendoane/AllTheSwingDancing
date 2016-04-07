class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
  before_action :current_user
  before_filter {|c| Authorization.current_user = c.current_user}

  def current_user
    if defined?(@current_user)
      return @current_user
      if first_name
        @current_user.username = first_name
      end
    else
      @current_user = current_user_session && current_user_session.record
    end
  end

private
  def current_user_session
    if defined?(@current_user_session)
        return @current_user_session
      else
        @current_user_session = Session.find
    end
  end



end
