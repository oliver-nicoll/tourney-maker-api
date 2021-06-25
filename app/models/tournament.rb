class Tournament < ApplicationRecord
    has_many :registrations
    has_many :teams, through: :registrations

    validates :tourney_name, presence: true

end
