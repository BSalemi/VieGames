class Game < ApplicationRecord
    validates(:title, :presence => true)
    validates :title, uniqueness: {
        scope: %i[system_id],
        message: 'has already been added for this system'
    }

    validates(:content_rating, :presence => true)
    validates(:system_id, :presence => true)
    validates(:company_id, :presence => true)

    belongs_to :company 
    belongs_to :system

    has_many :events 
    has_many :user_games
    has_many :users, through: :user_games 
end
