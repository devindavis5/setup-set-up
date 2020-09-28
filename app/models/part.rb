class Part < ApplicationRecord
    has_many :setup_parts
    belongs_to :category
end
