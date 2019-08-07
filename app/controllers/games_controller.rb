class GamesController < ApplicationController
    
    def index 
        @games = Game.all 
    end 

    def new 
        @game = Game.new
        @systems = System.all
        @companies = Company.all
    end 

    def create 
        @game = Game.new(game_params)
        @system = System.find_by(id: @game.system_id)
        @game.company_id = @system.company_id
        if @game.valid? 
            @game.save 
            if params[:game][:user_game] == "true" 
                user_game = UserGame.create(user_id: current_user.id, game_id: @game.id)
                redirect_to game_path(@game)
            else 
                redirect_to game_path(@game)
            end
        else 
            render :new 
        end 
    end 
      
    def show 
        @game = Game.find(params[:id])
    end 

    def rating 
        @formatted = params[:rating].split("_").map{|element| element.capitalize}.join(" ")
        @games = Game.all.select{|game| game.content_rating == @formatted}
    end 


    private 

    def game_params
        params.require(:game).permit(:title, :content_rating, :system_id, :company_id)
    end 

end
