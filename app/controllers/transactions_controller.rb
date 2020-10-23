class TransactionsController < ApplicationController
  before_action :load_account
  before_action :load_transaction, except: [:index, :new, :create]
  
  def index
    @transactions = @account.transactions
  end
  
  def new
    @transaction = Transaction.new
  end
  
  def create
    @transaction = Transaction.new transaction_params
    if @account.transactions << @transaction
      redirect_to account_transactions_path(@account), notice: "Transaction Created."
    else
      render :new
    end
  end
  
  def show
  end
  
  private
  
  def load_account
    @account = Account.find params[:account_id]
  end
  
  def load_transaction
    @transaction = @account.transactions.find params[:id]
  end
  
  def transaction_params
    params.require(:transaction).permit(:transaction_type,:amount,:description)
  end
  
end
