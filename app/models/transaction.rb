class Transaction < ApplicationRecord
    belongs_to :account
    has_many :image_elements
    
    validates :transaction_type, presence: true
end
