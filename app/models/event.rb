class Event < ApplicationRecord
    validates(:date, numericality: {
        greater_than_or_equal_to: Date.today.day.month.year
    }
    )
    validates(:max_num_entrants, numericality: {
        only_integer: true,
        greater_than_or_equal_to: 3
    }
    )
    validates(:entrance_fee, numericality: {
        only_integer: true,
        greater_than_or_equal_to: 0
    }
    )
    validates(:prize,  numericality: {
        only_integer: true,
        greater_than_or_equal_to: 0
    }
    )
    validates(:host, :presence => true)
    validates(:game_id, :presence => true)
    validates(:location, :presence => true)

    belongs_to :game 
    has_many :user_events 
    has_many :users, through: :user_events
end
