class CreateRegistrations < ActiveRecord::Migration[6.1]
  def change
    create_table :registrations do |t|
      t.belongs_to :team
      t.belongs_to :tournament

      t.timestamps
    end
  end
end
