class Event < ApplicationRecord
    validates: (:dates, presence: => true)
    validates: (:max_num_entrants, presence: => true)
    validates: (:entrance_fee, presence: => true)
    validates: (:prize, presence: => true)
    validates: (:host, presence: => true)
    validates: (:game_id, presence: => true)
    validates: (:location, inclusion: { in: [In Person, Online]})

    belongs_to :game 
    has_many :user_events 
    has_many :users, through: :user_events
end
