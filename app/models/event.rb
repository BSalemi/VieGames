class Event < ApplicationRecord
    validate :event_date_cannot_be_in_the_past
    
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
    validates(:game_id, :presence => true)
    validates :game_id, uniqueness: {
        scope: %i[date],
        message: 'has already been created for this date.'
    }
    
    validates(:location, :presence => true)

    belongs_to :game 
    has_many :user_events 
    has_many :users, through: :user_events

    def event_date_cannot_be_in_the_past
        if date.present? && date < Date.today
          errors.add(:date, "can't be in the past")
        end
    end    
end
