# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tourney_one = Tournament.create(
    tourney_name: "Berwick Brawl",
    date: "July 12, 2021",
    description: "Come join the fun! Doubles Grass Tournament. Winner recieves $500.00, a plaque and bragging rights",
    host: "Sarah Evens",   
)

team_one = Team.create(
    team_name: "Berwick Bash",
    players: ["Todd Smith", "Madelyn Cage"],
    team_captain: "Todd Smith",
    player_count: 2,
    ranked: 1
)

team_two = Team.create(
    team_name: "Olervit",
    players: ["Samantha Parker", "Julia Taker"],
    team_captain: "Samantha Parker",
    player_count: 2,
    ranked: 2
)
team_three = Team.create(
    team_name: "Spikers",
    players: ["Jordan Rage", "Jillian Cooler"],
    team_captain: "Jillian Cooler",
    player_count: 2,
    ranked: 3
)

team_four = Team.create(
    team_name: "MacBros",
    players: ["Daniel Mac", "Lincoln Mac"],
    team_captain: "Lincoln Mac",
    player_count: 2,
    ranked: 4
)

team_five = Team.create(
    team_name: "TakeMiDinero",
    players: ["Ezra Topher", "Oliver Reef"],
    team_captain: "Ezra Topher",
    player_count: 2,
    ranked: 5
)

team_six = Team.create(
    team_name: "Schoolers",
    players: ["Tayor Coolbaugh", "Jackie Chanie"],
    team_captain: "Jackie Chanie",
    player_count: 2,
    ranked: 6
)

team_seven = Team.create(
    team_name: "Smash Bash",
    players: ["Nicholas Overit", "Gabriel Overit"],
    team_captain: "Gabriel Overit",
    player_count: 2,
    ranked: 7
)

team_eight = Team.create(
    team_name: "VolleyLovers",
    players: ["Parker Tall", "Teagan Hit"],
    team_captain: "Parker Tall",
    player_count: 2,
    ranked: 8
)
team_nine = Team.create(
    team_name: "Sprawlers",
    players: ["Morgan Steele", "Cooper Blazer"],
    team_captain: "Cooper Blazer",
    player_count: 2,
    ranked: 9
)

team_ten = Team.create(
    team_name: "TallOnes",
    players: ["Austin Next", "Chris Wilde"],
    team_captain: "Chris Wilde",
    player_count: 2,
    ranked: 10
)

team_eleven = Team.create(
    team_name: "NoTengoDinero",
    players: ["Reagan Reeler", "Katie Smiths"],
    team_captain: "Reagan Reeler",
    player_count: 2,
    ranked: 11
)

team_twelve = Team.create(
    team_name: "Tunkhannock",
    players: ["Madison Tackler", "Isabella Coffee"],
    team_captain: "Madison Tackler",
    player_count: 2,
    ranked: 12
)

# game_one = Game.create(
#     score: "25-23",
#     winning_team: "NoTengoDinero",
#     opponent_name: "Tunkhannock",
#     team_id: 11,
#     tournament_id: 1,
# )
