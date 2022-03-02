class ParksController < ApplicationController
  def index
    @parks = Park.all

    # the `geocoded` scope filters only parks with coordinates (latitude & longitude)
    @markers = @parks.geocoded.map do |park|
      {
        lat: park.latitude,
        lng: park.longitude
      }
    end
    render layout: "application_simple"
  end
end
