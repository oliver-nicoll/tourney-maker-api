class Team < ApplicationRecord
    has_many :registrations
    has_many :tournaments, through: :registrations

    validates :team_name, presence: true


    def shuffle_teams(id) 
        @teamid = @teams.find_by(team_id: team.id) 
        @shuffle_teams = @teams.shuffle
        #tournament.teams relationship
    end
end
