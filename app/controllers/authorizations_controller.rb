class AuthorizationsController < ApplicationController
  before_filter :require_user, :only => [:destroy]

  def create
    omniauth = request.env['omniauth.auth'] #this is where you get all the data from your provider through omniauth
    @auth = Authorization.find_from_omniauth_data(omniauth)
    if current_user
      flash[:notice] = "Successfully added #{omniauth['provider']} authentication"
      current_user.authorizations.create(:provider => omniauth['provider'], :uid => omniauth['uid']) #Add an auth to existing user
      redirect_to edit_user_path(:current)
    elsif @auth
      flash[:notice] = "You've logged in via #{omniauth['provider']}. Welcome, #{@auth.user.first_name}!"
      Session.create(@auth.user, true) #User is present. Login the user with his social account
      redirect_to root_url
    else
      @new_auth = Authorization.create_from_omniauth_data(omniauth, current_user) #Create a new user
      flash[:notice] = "Via #{omniauth['provider']}, Your account has been created."
      Session.create(@new_auth.user, true) #Log the authorizing user in.
      redirect_to root_url
    end
  end

  def failure
    flash[:notice] = "Sorry, You didn't authorize"
    redirect_to root_url
  end

  def blank
    render :text => "Not Found", :status => 404
  end

  def destroy
    @authorization = current_user.authorizations.find(params[:id])
    flash[:notice] = "Successfully deleted #{@authorization.provider} authentication."
    @authorization.destroy
    redirect_to edit_user_path(:current)
  end
end
