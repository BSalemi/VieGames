class Company < ApplicationRecord
    has_many :games
    has_many :systems
end
