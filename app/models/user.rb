class User < ApplicationRecord
    has_many :setups
    has_many :setup_parts, through: :setups
end
