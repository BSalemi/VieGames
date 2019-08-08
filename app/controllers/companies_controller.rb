class CompaniesController < ApplicationController
    before_action :require_login
    def index 
        @companies = Company.all 
    end 

    def show 
        @games = Game.all 
        @company = Company.find(params[:id])
    end 

    private 

    def require_login
        unless logged_in?
            flash[:error] = "You must be logged in to access this section"
            redirect_to login_path 
          end
    end
end
