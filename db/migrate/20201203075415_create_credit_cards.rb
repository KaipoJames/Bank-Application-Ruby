class CreateCreditCards < ActiveRecord::Migration[6.0]
  def change
    create_table :credit_cards do |t|
      t.string :number
      t.string :security_code
      t.string :expiration_date

      t.timestamps
    end
  end
end
