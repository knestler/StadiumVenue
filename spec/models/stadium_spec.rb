require 'rails_helper'

RSpec.describe Stadium do
  before :each do 
    ## figure out delay testing
    @sofi = Stadium.create!(name: 'SoFi Stadium', capacity:68500, indoor: true)#, created_at: :delay 0 seconds)
    @metlife =  Stadium.create!(name: 'MetLife', capacity:82500, indoor: false)#, created_at: :delay 2 seconds)
    @levis =  Stadium.create!(name: "Levi's", capacity:70000, indoor: true)#, created_at: :delay 4 seconds)
    
    @chargers = @sofi.teams.create!(name: "LA Chargers", sport: "Football", home_games: 9, away_games: 8, male: true, stadium_id: 3)
    @rams = @sofi.teams.create!(name: "Los Angeles Rams", sport: "Football", home_games: 11, away_games: 6, male: true, stadium_id: 3)
  end
  
  it {should have_many :teams}
  
  it 'should order stadiums by date/time created' do 
    expect(Stadium.order_by).to eq([@levis, @metlife, @sofi])
  end

  it 'should order stadiums by date/time created' do 
    expect(Stadium.count).to eq(3)
  end

end