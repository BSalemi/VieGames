class EventsController < ApplicationController
    before_action :require_login

    def index
        if !params[:game_id]
           @events = Event.all 
        else 
            @game_id = params[:game_id].to_i
            @game = Game.find(params[:game_id])
            @events = Event.all.select {|event|event.game_id == @game_id}
            render :game_event_index
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
            if current_user.games.find{|game| game.id == @event.game_id}
                redirect_to event_path(@event)
            else
                user_game = UserGame.create(user_id: current_user.id, game_id: @event.game_id)
                redirect_to event_path(@event) 
            end 
        else 
            render :new 
        end 
    end 

    def show
        @event = Event.find(params[:id])
    end 

    def edit 
        @event = Event.find(params[:id])
        render :access_denied unless @event.host == true 
    end 

    def update
        @event = Event.find(params[:id])
        @event.date = params[:event][:date]
        @event.location = params[:event][:location]
        @event.entrance_fee = params[:event][:entrance_fee]
        @event.prize = params[:event][:prize]
        @event.max_num_entrants = params[:event][:max_num_entrants]
        @event.host_id = params[:event][:host_id]
        @event.game_id = params[:event][:game_id]
            
        if @event.valid?
            @event.save
            redirect_to event_path(@event)
        else 
            render :edit
        end 
     end 

    def delete
      @event = Event.find(params[:id])
        if @event.host 
           @event.delete
           redirect_to events_path
        else 
            render :access_denied
        end 
    end 

    private 

    def event_params 
        params.require(:event).permit(:date, :location, :entrance_fee, :prize, :host_id, :max_num_entrants, :game_id)
    end 

    def require_login
        unless logged_in?
            flash[:error] = "You must be logged in to access this section"
            redirect_to login_path 
          end
    end
end
