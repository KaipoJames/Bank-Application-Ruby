class Account < ApplicationRecord
    validates :account_number, presence: true
end