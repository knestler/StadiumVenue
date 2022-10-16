class AddStadiumToTeams < ActiveRecord::Migration[5.2]
  def change
    add_reference :teams, :stadium, foreign_key: true
  end
end
