class Tournament < ApplicationRecord
    has_many :games
    has_many :teams, through: :games
end
