class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :score
      t.string :winning_team
      t.string :opponent_name
      t.belongs_to :team
      t.belongs_to :tournament
      
      
      
      t.timestamps
    end
  end
end
