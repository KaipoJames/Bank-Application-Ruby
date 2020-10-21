class RenameTypeColumnToTransactionType < ActiveRecord::Migration[6.0]
  def self.up
    rename_column :transactions, :type, :transaction_type
  end

  def self.down
    rename_column :transaction, :transaction_type, :type
  end
end
