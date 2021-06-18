class Game < ApplicationRecord
    belongs_to :team 
    has_one :tournament, through: :team
end
