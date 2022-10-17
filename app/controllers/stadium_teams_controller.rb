class StadiumTeamsController <ApplicationController

def index
  stadium = Stadium.find(params[:stadia_id])
  @teams = stadium.teams
end
end