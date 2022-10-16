class StadiaController < ApplicationController

  def index
    @stadia = Stadium.all
  end

  def show
    @stadia = Stadium.find(params[:id])
  end
end