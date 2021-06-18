class Team < ApplicationRecord
    has_many :team_tournaments
    has_many :tournaments, through: :team_tournaments
    has_many :games
end
