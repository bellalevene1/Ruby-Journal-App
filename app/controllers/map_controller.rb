class MapController < ApplicationController
  def index
    @entries = Entry.all
    @dream_destinations = DreamDestination.all
  end
end 
