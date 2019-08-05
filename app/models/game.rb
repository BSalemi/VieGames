class Game < ApplicationRecord
    belongs_to :company 
    belongs_to :system
    has_many :events 
    has_many :user_games
    has_many :users, through: :user_games 
end
