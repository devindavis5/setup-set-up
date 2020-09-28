class Setup < ApplicationRecord
    belongs_to :user
    has_many :setup_parts
end
