class UsersController < ApplicationController
    before_action :require_login, only: [:show, :edit, :update, :delete_page, :delete]

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

    def delete_page 
        @user = current_user
    end 

    def delete
        @user = current_user 
        @user.delete
        redirect_to '/'
    end 
    
    private 

    def user_params 
        params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end 

    def require_login
        unless logged_in?
            flash[:error] = "You must be logged in to access this section"
            redirect_to login_path 
          end
    end

    
end
