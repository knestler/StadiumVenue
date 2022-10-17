Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/stadia', to: 'stadia#index'
  get '/stadia/:id', to: 'stadia#show'

  get '/teams', to: 'teams#index'
  get '/teams/:id', to: 'teams#show'
  
  get '/stadia/:stadia_id/teams', to: 'stadium_teams#index'
  get '/stadia/:stadia_id/teams/:teams_id', to: 'stadium_teams#show'

end
