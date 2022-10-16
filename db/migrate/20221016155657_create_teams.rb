class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :sport
      t.integer :home_games
      t.integer :away_games
      t.boolean :male
      t.timestamps
    end
  end
end
