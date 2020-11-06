class Account < ApplicationRecord
    has_many :transactions
    belongs_to :user
    
    validates :account_number, presence: true
end
