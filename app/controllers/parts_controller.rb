class PartsController < ApplicationController


    def index
        @parts = Part.all
    end

    def show
        @part = Part.find(params[:id])
    end
end
