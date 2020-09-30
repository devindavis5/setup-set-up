class SessionsController < ApplicationController

    def sign_in
        @user = User.new
    end

    def create
        @user = User.find_by(username: params[:user][:username])
        if @user != nil && @user.authenticate(params[:user][:password])
            session[:id] = @user.id
            redirect_to '/user/profile'
        else
            flash[:error] = "Incorrect username or password"
            redirect_to '/sign_in'
        end
    end
    
    def destroy
        session.clear
        redirect_to '/sign_in'
    end

end