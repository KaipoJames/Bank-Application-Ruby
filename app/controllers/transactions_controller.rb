class TransactionsController < ApplicationController
  before_action :load_task
  
  def index
    @transactions = @account.transactions
  end
  
  private
  
  def load_task
    @account = Account.find params[:account_id]
  end
  
end
