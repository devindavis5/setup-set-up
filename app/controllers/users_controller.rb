class UsersController < ApplicationController
      
    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            session[:id] = @user.id  
            redirect_to "/user/profile"
        else
            flash[:errors] = @user.errors.full_messages            
            redirect_to "/users/new"
        end
    end

    def profile
        @user = User.find(session[:id])
    end

    def quiz
        @user = User.find(session[:id])
    end

    def setup
    end

    private
     
    def user_params
        params.require(:user).permit(:name, :password, :username)
    end
    
end
