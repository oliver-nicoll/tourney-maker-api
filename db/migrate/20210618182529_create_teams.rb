class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :team_name
      t.string :players
      t.string :team_captain
      t.integer :player_count
      t.integer :ranked
      
      t.timestamps
    end
  end
end
