class User < ApplicationRecord
    has_secure_password
    
    validates :email, format: { with: /@/, message: "Must have an @" }, uniqueness: true
    validates :first_name, presence: true
    validates :last_name, presense: true
    validates :username, presence: true
end
