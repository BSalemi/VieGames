class EventsController < ApplicationController

    def index
    end 

    def new
        if params[:game_id]
            @game_id = params[:game_id]
        else
            @games = Game.all
        end
        @event = Event.new 
    end 

    def create
        @event = Event.new(event_params)
        if @event.valid?
            @event.save 
            user_event = UserEvent.create(game_id: params[:game_id], event_id: @event.id)
            redirect_to event_path(@event)
        else 
            render :new 
        end 
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
