class UsersController < ApplicationController
  # Make page to display all users(Admin Page Only)
  def index
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new user_params
    if @user.save
      redirect_to root_path, notice: "You are now registered!"
    else
      render :new
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:first_name,:last_name,:email,:phone_number,:username,:password,:password_confirmation)
  end
  
end
