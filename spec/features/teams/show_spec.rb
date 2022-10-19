require 'rails_helper'

RSpec.describe 'the team show page' do 
  it 'displays the team name' do 
    @stadium = Stadium.create!(name: "Eagles", capacity: 90000, indoor: false)
    team_1 = Team.create!(name: "Jets", sport: "Football", home_games: 12, away_games: 13, male: true, stadium_id: @stadium.id)
    team_2 = Team.create(name: "Giants", sport: "Football", home_games: 14, away_games: 11, male: true, stadium_id: @stadium.id)
    visit "/teams/#{team_1.id}"

    # save_and_open_page
    expect(page).to have_content("Jets")
    # expect(page).to have_content(team.stadium_id)
    # expect(page).to have_content(team.sport)
    # expect(page).to have_content(team.home_games) 
    # expect(page).to have_content(team.away_games)
    # expect(page).to have_content(team.male)
    # expect(page).to have_content(team.created_at)
    # expect(page).to have_content(team.updated_at)

  end 

  it "can display the home stadium for the team" do 
    @stadium = Stadium.create(name: "Eagles", capacity: 90000, indoor: false)
    team = Team.create(name: "Jets", sport: "Football", home_games: 12, away_games: 13, male: true, stadium_id: @stadium.id)
    team_2 = Team.create(name: "Giants", sport: "Football", home_games: 14, away_games: 11, male: true, stadium_id: @stadium.id)
    visit "/teams/#{team.id}"
    expect(page).to have_content(team.stadium_id)
  end 

  it 'has link at the top of the page that takes me to the Parent Index' do 
    @stadium = Stadium.create!(name: "Eagles", capacity: 90000, indoor: false)
    team_1 = Team.create!(name: "Jets", sport: "Football", home_games: 12, away_games: 13, male: true, stadium_id: @stadium.id)
    team_2 = Team.create(name: "Giants", sport: "Football", home_games: 14, away_games: 11, male: true, stadium_id: @stadium.id)
    visit "/teams/#{team_1.id}"

    expect(page).to(have_link("Stadium's"))
    click_link("Stadium's")
    expect(current_path).to(eq("/stadia"))
  end
end