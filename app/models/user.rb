class User < ApplicationRecord
    has_secure_password
    has_many :accounts
    has_many :credit_cards
    
    validates :email, format: { with: /@/, message: "Must have an @" }, uniqueness: true
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :username, presence: true
    
    def self.new_from_hash(user_hash)
        user = User.new user_hash
        user.password_digest = 0
        user
    end
    
    def has_password?
       self.password_digest.nil? || self.password_digest != '0' 
    end
    
end
