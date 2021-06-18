# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_18_182906) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.string "score"
    t.integer "game_number"
    t.string "winning_team"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "team_tournaments", force: :cascade do |t|
    t.bigint "team_id"
    t.bigint "tournament_id"
    t.integer "quantity", default: 12
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["team_id"], name: "index_team_tournaments_on_team_id"
    t.index ["tournament_id"], name: "index_team_tournaments_on_tournament_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "team_name"
    t.string "players"
    t.string "team_captain"
    t.integer "player_count"
    t.integer "ranked"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tournaments", force: :cascade do |t|
    t.string "tourney_name"
    t.string "date"
    t.text "description"
    t.string "host"
    t.string "winner", default: "none"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
