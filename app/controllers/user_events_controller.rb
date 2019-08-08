class UserEventsController < ApplicationController

    def add_event 
        event = Event.find(params[:id])
        user_event = UserEvent.create(user_id: current_user.id, event_id: event.id) 
        redirect_to user_path(current_user)
    end 
end
