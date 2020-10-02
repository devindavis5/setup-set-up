class Part < ApplicationRecord
    has_many :setup_parts
    belongs_to :category

    def costs
        "%.2f" % self.cost
    end
end
