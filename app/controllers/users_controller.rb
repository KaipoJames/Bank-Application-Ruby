class UsersController < ApplicationController
  before_action :authenticate, except: [:new, :create]
  
  # Make page to display all users(Admin Page Only)
  def index
  end
  
  def new
    if session[:user_hash]
      @user = User.new_from_hash(session[:user_hash])
      @user.valid?
    else
      @user = User.new
    end
  end
  
  def create
    @user = User.new user_params
    if @user.save
      login(@user)
      redirect_to root_path, notice: "You are now registered!"
    else
      render :new
    end
  end
  
  def show
    @user = current_user
  end
  
  def edit
    @user = current_user
  end
  
  def update
    @user = current_user
    if @user.update update_user_params
      redirect_to @user, notice: "Account Profile Updated"
    else
      render :edit
    end
  end
  
  def destroy
    @user = current_user
    logout
    @user.destroy
    redirect_to root_path, alert: "Account Profile Deleted"
  end
  
  private
  
  def user_params
    params.require(:user).permit(:first_name,:last_name,:email,:phone_number,:username,:password,:password_confirmation)
  end
  
  def update_user_params
    params.require(:user).permit(:email, :phone_number, :username, :password)
  end
  
end
