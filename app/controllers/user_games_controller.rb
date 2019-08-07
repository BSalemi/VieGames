class UserGamesController < ApplicationController

    def add_game 
        game = Game.find(params[:id])
        user_game = UserGame.create(user_id: current_user.id, game_id: game.id)
        redirect_to user_path(current_user)
    end 
end
