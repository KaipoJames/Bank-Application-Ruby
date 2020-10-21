class Transaction < ApplicationRecord
    belongs_to :account
    
    validates :transaction_type, presence: true
end
