require 'rails_helper'

RSpec.describe 'the team show page' do 
  it 'displays the team name' do 
    stadium = Stadium.create(name: "Eagles", capacity: 90000, indoor: false)
    team = Team.create(name: "Jets", sport: "Football", home_games: 12, away_games: 13, male: true, stadium_id: 1)
    team_2 = Team.create(name: "Giants", sport: "Football", home_games: 14, away_games: 11, male: true, stadium_id: 1)
    visit "/teams/#{team.id}"

    expect(page).to have_content(team.name)
    expect(page).to have_content(team.stadium_id)
    expect(page).to have_content(team.sport)
    expect(page).to have_content(team.home_games) 
    expect(page).to have_content(team.away_games)
    expect(page).to have_content(team.male)
    expect(page).to have_content(team.created_at)
    expect(page).to have_content(team.updated_at)

  end 

  it "can display the home stadium for the team" do 
    stadium = Stadium.create(name: "Eagles", capacity: 90000, indoor: false)
    team = Team.create(name: "Jets", sport: "Football", home_games: 12, away_games: 13, male: true, stadium_id: 1)
    team_2 = Team.create(name: "Giants", sport: "Football", home_games: 14, away_games: 11, male: true, stadium_id: 1)
    visit "/teams/#{team.id}"
    save_and_open_page

    expect(page).to have_content(team.name)
    expect(page).to have_content(team.stadium_id)
    expect(page).to have_content(team.sport)
    expect(page).to have_content(team.home_games) 
    expect(page).to have_content(team.away_games)
    expect(page).to have_content(team.male)
    expect(page).to have_content(team.created_at)
    expect(page).to have_content(team.updated_at)

  end 
end