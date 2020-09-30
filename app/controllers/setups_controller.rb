class SetupsController < ApplicationController
     
        # create a part that corresponds to every quiz answer
            #ex: large screen is Acer 27", average screen is Acer 21"
        
        # after quiz, create new setup with new_user id

        # create a setup_part for each answer, with each part id that corresponds with quiz answer
            #and with the setup_id we just created

        # on user_profile, add my_setups button, which shows their setup.name and list of setup.parts

    def select
        @user = User.find(session[:id])
    end



    private
     
    def setup_params
        params.require(:user).permit(:name, :password, :username)
    end
end
