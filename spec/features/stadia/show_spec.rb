require 'rails_helper'

RSpec.describe 'the stadia show page' do 
  it 'displays the stadium name' do 
    stadium = Stadium.create(name: "Eagles", capacity: 90000, indoor: false)
    visit "/stadia/#{stadium.id}"
# require 'pry'; binding.pry
    save_and_open_page

  expect(page).to have_content(stadium.id)
  expect(page).to have_content(stadium.name)
  expect(page).to have_content(stadium.capacity)
  expect(page).to have_content(stadium.indoor)

  expect(page).to have_content(stadium.created_at)
  expect(page).to have_content(stadium.updated_at)


  end

  
    
end