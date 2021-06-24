class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :score
      t.integer :game_number
      t.string :winning_team
      t.integer :opponent_id 
      t.string :opponent_name
      t.belongs_to :team
      t.belongs_to :tournament
      t.integer :quantity, default: 12
      
      
      t.timestamps
    end
  end
end
