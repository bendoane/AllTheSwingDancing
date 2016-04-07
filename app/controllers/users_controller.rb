class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @role = Role.new
    @role.title = "user"
    @user.roles << @role
    @user.save!
    redirect_to root_url
  end

private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end
