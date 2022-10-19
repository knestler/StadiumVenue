class StadiaController < ApplicationController

  def index
    @stadia = Stadium.all
  end

  def show
    @stadia = Stadium.find(params[:id])
  end

  def new
    
  end

  def create
    @stadia = Stadium.create(stadia_params) #name: params[:name], capacity: params[:capacity], indoor: params[:indoor])
    redirect_to '/stadia'
  end

  private 
    def stadia_params
      params.permit(:name, :capacity, :indoor)
    end
  

end