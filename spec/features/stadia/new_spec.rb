require 'rails_helper'

RSpec.describe 'the child creation' do 
  before :each do 
    ## figure out delay testing
    @sofi = Stadium.create!(name: 'SoFi Stadium', capacity:68500, indoor: true)#, created_at: :delay 0 seconds)
    @metlife =  Stadium.create!(name: 'MetLife', capacity:82500, indoor: false)#, created_at: :delay 2 seconds)
    @levis =  Stadium.create!(name: "Levi's", capacity:70000, indoor: true)#, created_at: :delay 4 seconds)
    @chargers = @sofi.teams.create!(name: "LA Chargers", sport: "Football", home_games: 9, away_games: 8, male: true, stadium_id: 3)
    @rams = @sofi.teams.create!(name: "Los Angeles Rams", sport: "Football", home_games: 11, away_games: 6, male: true, stadium_id: 3)
  end

  describe '#11 see a link to create a new Parent record, "New Parent"' do 
    it 'has a link' do 
      visit "/stadia"
      # save_and_open_page
      expect(page).to have_link("New Stadia")
      click_link("New Stadia")
      expect(current_path).to eq('/stadia/new') 
      fill_in 'Name', with: 'Gillett'
      fill_in 'Capacity', with: '54000'
      choose 'indoor', with: true
      
      click_on 'Create Stadium'
      expect(current_path).to eq('/stadia') 

    end



  end
end
