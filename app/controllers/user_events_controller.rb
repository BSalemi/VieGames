class UserEventsController < ApplicationController
    before_action :require_login

    def add_event 
        event = Event.find(params[:id])
        user_event = UserEvent.create(user_id: current_user.id, event_id: event.id) 
        redirect_to user_path(current_user)
    end 

    def delete_event 
        event = Event.find(params[:id])
        user_event = UserEvent.find_by(user_id: current_user.id, event_id: event.id)
        user_event.destroy
        redirect_to user_path(current_user)
    end 

    private
    
    def require_login
        unless logged_in?
            flash[:error] = "You must be logged in to access this section"
            redirect_to login_path 
          end
    end
end
