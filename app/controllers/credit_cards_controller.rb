class CreditCardsController < ApplicationController
  before_action :authenticate
  before_action :load_credit_card, except: [:index, :new, :create]

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

  # GET, accounts/:id
  def show
  end
  
  # GET, accounts/:id/edit
  def edit
  end

  # PATCH/PUT, accounts/:id
  def update 
    if @credit_card.update update_credit_card_params
      redirect_to @credit_card, notice: "Card Updated"
    else
      render :edit
    end
  end
  
  # DELETE, accounts/:id
  def destroy
    @credit_card.destroy
    redirect_to credit_cards_path, alert: "Card Deleted"
  end

  private 
  def load_credit_card
    @credit_card = current_user.credit_cards.find params[:id]
  end
  
  def credit_card_params
    params.require(:credit_card).permit(:number, :security_code, :expiration_date)
  end
  
  def update_credit_card_params
    params.require(:credit_card).permit(:number)
  end

end
