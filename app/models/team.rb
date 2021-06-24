class Team < ApplicationRecord
    has_many :games
    has_many :tournaments, through: :games
end
