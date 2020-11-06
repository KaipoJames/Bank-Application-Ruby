class User < ApplicationRecord
    has_secure_password
    has_many :accounts
    
    validates :email, format: { with: /@/, message: "Must have an @" }, uniqueness: true
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :username, presence: true
end
