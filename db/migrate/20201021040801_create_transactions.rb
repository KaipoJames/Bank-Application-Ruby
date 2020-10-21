class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.string :type
      t.integer :account_id
      t.integer :amount
      t.text :description

      t.timestamps
    end
  end
end
