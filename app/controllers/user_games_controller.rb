class UserGamesController < ApplicationController

    def add_game 
        game = Game.find(params[:id])
        user_game = UserGame.create(user_id: current_user.id, game_id: game.id)
        redirect_to user_path(current_user)
    end 

    def delete_game 
        game = Game.find(params[:id])
        user_events = current_user.user_events.select {|user_event| user_event.event.game_id == game.id}
        user_game = UserGame.find_by(game_id: game.id, user_id: current_user.id)
        user_game.destroy
        UserEvent.destroy(user_events.map(&:id))
        redirect_to user_path(current_user)
    end 
end
