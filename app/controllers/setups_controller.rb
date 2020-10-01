class SetupsController < ApplicationController
     
    def new
        @setup = Setup.new
        # @setup.user_id = session[:id]
    end

    def show
        @setup = Setup.find(params[:id])
        @parts = @setup.my_parts
    end
    
    def create
        @setup = Setup.create(name: params[:setup][:name], user_id: session[:id], budget: params[:max_budget], use: params[:use], size: params[:size], color: params[:color])
        if @setup.valid?
            @setup.select_parts(name: params[:setup][:name], user_id: session[:id], budget: params[:max_budget], use: params[:use], size: params[:size], color: params[:color])
            flash[:alert] = "Your custom setup has been added to your profile!"
            redirect_to "/user/profile"
        else
            flash[:errors] = @setup.errors.full_messages            
            redirect_to "/setups/new"
        end
    end
end
