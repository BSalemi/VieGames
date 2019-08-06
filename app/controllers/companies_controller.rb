class CompaniesController < ApplicationController

    def index 
        @companies = Company.all 
    end 

    def show 
        @games = Game.all 
        @company = Company.find(params[:id])
    end 
end
