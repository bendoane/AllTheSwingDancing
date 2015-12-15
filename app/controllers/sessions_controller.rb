class SessionsController < ApplicationController

  def new
    @user_session = Session.new
  end

  def create
    @user_session=Session.new(user_session_params)
    @user_session.save!
    redirect_to root_url
  end

  def show
    @event=Event.find(params[:id])
  end

  def update
  end

  def destroy
    @user_session = Session.find
    @user_session.destroy
    redirect_to root_url
  end

private

  def user_session_params
    params.require(:session).permit(:username, :password)
  end
end
