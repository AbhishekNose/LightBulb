class UsersController < ApplicationController
  
  # Use devise action "authenticate_user" to make a rule
  # that users cannot access ANY page in the profiles
  # controller unless the user is authenticated / has a 
  # valid account.
  before_action :authenticate_user!
  
  def index
    # Create a users variable and store all users in it.
    @users = User.all
  end
  
  def show
    # Show the user profile of the particular user.
    @user = User.find(params[:id] )
  end
end