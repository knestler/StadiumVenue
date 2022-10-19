require 'rails_helper'

RSpec.describe 'the stadia show page' do 
  before :each do 
    ## figure out delay testing
    @sofi = Stadium.create!(name: 'SoFi Stadium', capacity:68500, indoor: true)#, created_at: :delay 0 seconds)
    @metlife =  Stadium.create!(name: 'MetLife', capacity:82500, indoor: false)#, created_at: :delay 2 seconds)
    @levis =  Stadium.create!(name: "Levi's", capacity:70000, indoor: true)#, created_at: :delay 4 seconds)
    @chargers = @sofi.teams.create!(name: "LA Chargers", sport: "Football", home_games: 9, away_games: 8, male: true, stadium_id: 3)
    @rams = @sofi.teams.create!(name: "Los Angeles Rams", sport: "Football", home_games: 11, away_games: 6, male: true, stadium_id: 3)
  end

  it 'displays the @sofi name' do 
    visit "/stadia/#{@sofi.id}"

    expect(page).to have_content(@sofi.id)
    expect(page).to have_content(@sofi.name)
    expect(page).to have_content(@sofi.capacity)
    expect(page).to have_content(@sofi.indoor)
    expect(page).to have_content(@sofi.created_at)
    expect(page).to have_content(@sofi.updated_at)
    expect(page).to_not have_content(@metlife.name)
    expect(page).to_not have_content(@levis.name)
  end

  it 'has link at the top of the page that takes me to the Child Index' do 
    visit "/stadia/#{@sofi.id}"
    
    expect(page).to(have_link("Team's"))
    click_link("Team's")
    expect(current_path).to(eq("/teams"))
  end 

  it 'has link at the top of the page that takes me to the Parent Index' do 
    visit "/stadia/#{@sofi.id}"
    
    expect(page).to(have_link("Stadium's"))
    click_link("Stadium's")
    expect(current_path).to(eq("/stadia"))
  end 

  it 'has link at the top of the page that takes me to the Parent Child Index' do 
    visit "/stadia/#{@sofi.id}"
    expect(page).to(have_link("Stadium Team's"))
    click_link("Stadium Team's")
    expect(current_path).to(eq("/stadia/#{@sofi.id}/teams"))
  end
    
end