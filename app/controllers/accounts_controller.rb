class AccountsController < ApplicationController
  before_action :load_account, except: [:index, :new, :create]
  
  # GET, /accounts
  def index
    @accounts = Account.all
  end
  
  # GET, /accounts/new
  def new
    @account = Account.new
  end
  
  # POST, /accounts
  def create
    @account = Account.new account_params
    if @account.save
      redirect_to accounts_path, notice: "Account created!"
    else
      render :new
    end
  end
  
  # GET, accounts/:id
  def show
  end
  
  # GET, accounts/:id/edit
  def edit
  end
  
  # PATCH/PUT, accounts/:id
  def update 
    if @account.update update_account_params
      redirect_to @account, notice: "Task Updated"
    else
      render :edit
    end
  end
  
  # DELETE, accounts/:id
  def destroy
    @account.destroy
    redirect_to accounts_path, alert: "Task Deleted"
  end
  
  private 
  def load_account
    @account = Account.find params[:id]
  end
  
  def account_params
    params.require(:account).permit(:account_number, :account_type, :balance)
  end
  
  def update_account_params
    params.require(:account).permit(:account_type, :balance)
  end
  
end
