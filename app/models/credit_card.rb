class CreditCard < ApplicationRecord
    belongs_to :account

    validates :number, presence: true
end
