class User < ApplicationRecord
    has_many :setups
    has_many :setup_parts, through: :setups
    has_secure_password

    validates(:username, {presence: true, uniqueness: true})
    validates(:password, {presence: true})
    validates :password, length: { minimum: 6 }

    def my_setups
        self.setups
    end
end
