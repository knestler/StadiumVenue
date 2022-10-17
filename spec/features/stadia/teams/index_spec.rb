require 'rails_helper'

RSpec.describe 'Stadia team index' do
  it 'shows all the teams at the stadium' do 
    sofi = Stadium.create!(name: 'SoFi Stadium')
    chargers = sofi.teams.create!(name: "LA Chargers", sport: "Football", home_games: 9, away_games: 8, male: true, stadium_id: 3)
    rams = sofi.teams.create!(name: "Los Angeles Rams", sport: "Football", home_games: 11, away_games: 6, male: true, stadium_id: 3)

    visit "/stadia/#{sofi.id}/teams"

    expect(page).to have_content(chargers.name)
    expect(page).to have_content(rams.name)
  end
  
end