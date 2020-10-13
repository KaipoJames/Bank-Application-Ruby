class RenameTypeToAccountType < ActiveRecord::Migration[6.0]
  def up
    rename_column :accounts, :type, :account_type
  end

  def down
    rename_column :accounts, :account_type, :type
  end
end
