class Account < ApplicationRecord
    has_many :transactions
    
    validates :account_number, presence: true
end
