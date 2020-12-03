class AddUserIdToCreditCards < ActiveRecord::Migration[6.0]
  def change
    add_column :credit_cards, :user_id, :integer
  end
end
