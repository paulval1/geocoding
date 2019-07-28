class LocationsController < ApplicationController

  # GET /locations
  def index
    @locations = Location.geocoded #returns locations with coordinates

    @markers = @locations.map do |location|
      {
        lat: location.latitude,
        lng: location.longitude
      }
    end
  end
end
