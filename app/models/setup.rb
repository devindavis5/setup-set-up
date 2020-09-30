class Setup < ApplicationRecord
    belongs_to :user
    has_many :setup_parts

    def selection
        
        @budget = params[:max_budget]
        @use = params[:use]
        @size = params[:size]
        @color = params[:color]
    end
end
