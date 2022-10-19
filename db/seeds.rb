# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    @sofi = Stadium.create!(name: 'SoFi Stadium', capacity:68500, indoor: true)#, created_at: :delay 0 seconds)
    @metlife =  Stadium.create!(name: 'MetLife', capacity:82500, indoor: false)#, created_at: :delay 2 seconds)
    @levis =  Stadium.create!(name: "Levi's", capacity:70000, indoor: true)#, created_at: :delay 4 seconds)
    
    @chargers = @sofi.teams.create!(name: "LA Chargers", sport: "Football", home_games: 9, away_games: 8, male: true, stadium_id: 3)
    @rams = @sofi.teams.create!(name: "Los Angeles Rams", sport: "Football", home_games: 11, away_games: 6, male: true, stadium_id: 3)