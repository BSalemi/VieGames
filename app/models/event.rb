class Event < ApplicationRecord
    belongs_to :game 
    has_many :user_events 
    has_many :users, through: :user_events
end
