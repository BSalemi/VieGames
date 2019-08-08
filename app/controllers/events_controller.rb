class EventsController < ApplicationController

    def index
        if !params[:game_id]
           @events = Event.all 
        else 
            @game_id = params[:game_id]
            @events = Event.all.select {|event|event.game_id == @game_id}
            render :game_event.index
        end 
    end 

    def new
    @event = Event.new
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
            user_event = UserEvent.create(user_id: current_user.id, event_id: @event.id)
            redirect_to event_path(@event)
        else 
            render :new 
        end 
    end 

    def show
        @event = Event.find(params[:id])
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
