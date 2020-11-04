class User < ApplicationRecord
    has_secure_password
    
    validates :email, format: { with: /@/, message: "Must have an @" }, uniqueness: true
    validates :first_name, prescense: true
    validates :last_name, prescense: true
    validates :username, prescence: true
end
