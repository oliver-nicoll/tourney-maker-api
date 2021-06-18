class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :score
      t.integer :game_number
      t.string :winning_team
      
      t.timestamps
    end
  end
end
