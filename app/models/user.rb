class User < ApplicationRecord
    validates(:username, :presence => true, :uniqueness => true)
    validates(:email, :presence => true, :uniqueness => true)
    validates(:password, :presence => true)
    has_secure_password

    has_many :user_games 
    has_many :games, through: :user_games 

    has_many :user_events
    has_many :events, through: :user_events 
end
