class PartsController < ApplicationController


    def index
        @parts = Part.all
    end

    def display
        @part = Part.find(params[:id])
    end

    def show
        @part = Part.find(params[:id])
        @category = @part.category
    end

end
