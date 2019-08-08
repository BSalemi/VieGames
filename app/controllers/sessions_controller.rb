class SessionsController < ApplicationController
    before_action :require_login, only: [:destroy]

    def new 
        @user = User.new

    end 

    def create
        user = User.find_by(username: params[:user][:username])
        if user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id 
            @user = user 
            redirect_to user_path(@user)
        else
            redirect_to login_path 
        end   
    end 


    def destroy
        session.delete :user_id
        redirect_to '/'
    end 

    private 

    def require_login
        unless logged_in?
            flash[:error] = "You must be logged in to access this section"
            redirect_to login_path 
          end
    end
end
