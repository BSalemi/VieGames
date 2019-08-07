class SystemsController < ApplicationController

    def index 
        @systems = System.all 
        @companies = Company.all 
    end 

    def show 
        @system = System.find(params[:id])
    end 

end
