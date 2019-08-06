class UsersController < ApplicationController

    def home 

    end 

    def new 
        @user = User.new
    end 

    def create 
        @user = User.new(user_params)
        if @user.valid?
           @user.save
           session[:user_id] = @user.id 
           redirect_to user_path(@user)
        else 
            render :new 
        end
    end 

    def show 
        @user = User.find(session[:user_id])
    end

    def edit 
        @user = current_user
        redirect_to login_path unless logged_in?
    end 

    def update 
        @user = current_user
        @user.username = params[:user][:username]
        @user.email = params[:user][:email]
        @user.password = params[:user][:password]
            if @user.valid? 
               @user.save 
               redirect_to user_path(@user)
            else 
                render :edit
            end 
    end 


    private 

    def user_params 
        params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end 

    def logged_in?
        !!current_user
    end 

    def current_user 
        @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end 
end
