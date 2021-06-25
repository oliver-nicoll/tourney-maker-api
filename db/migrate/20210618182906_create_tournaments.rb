class CreateTournaments < ActiveRecord::Migration[6.1]
  def change
    create_table :tournaments do |t|
      t.string :tourney_name
      t.string :date
      t.text :description
      t.string :host

      t.timestamps
    end
  end
end
