class CreditCardsController < ApplicationController
  before_action :authenticate
  #before_action :load_credit_card, except: [:index, :new, :create]

  def index
    @credit_cards = CreditCard.all
  end

  def new
    @credit_card = CreditCard.new
  end

  def create
    @credit_card = CreditCard.new credit_card_params
    @credit_card.user = current_user
    if @credit_card.save
      redirect_to credit_cards_path, notice: "Card created!"
    else
      render :new
    end
  end

  private 
  def load_credit_card
    @credit_card = current_user.credit_cards.find params[:id]
  end
  
  def credit_card_params
    params.require(:credit_card).permit(:number, :security_code, :expiration_date)
  end
  
  def update_account_params
    params.require(:credit_card).permit(:number)
  end

end
