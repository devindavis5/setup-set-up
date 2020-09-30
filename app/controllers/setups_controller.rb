class SetupsController < ApplicationController
     
        # create a part that corresponds to every quiz answer
            #ex: large screen is Acer 27", average screen is Acer 21"
        
        # after quiz, create new setup with new_user id

        # create a setup_part for each answer, with each part id that corresponds with quiz answer
            #and with the setup_id we just created

        # on user_profile, add my_setups button, which shows their setup.name and list of setup.parts
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

    # private
     
    # def setup_params
    #     params(name: params[:setup][:name], user_id: session[:id], budget: params[:max_budget], use: params[:use], size: params[:size], color: params[:color])
    # end
end
