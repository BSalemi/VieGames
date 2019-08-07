class EventsController < ApplicationController

    def index
    end 

    def new 
        @event = Event.new 
    end 

    def create
    end 

    def show
    end 

    def edit 
    end 

    def update
    end 

    def delete
    end 

    private 

    def event_params 
        params.require(:event).permit(:date, :location, :entrance_fee, :prize, :host, :max_num_entrants, :game_id)
    end 
end
