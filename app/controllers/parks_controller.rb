class ParksController < ApplicationController
  def index
    @parks = Park.all

    # the `geocoded` scope filters only parks with coordinates (latitude & longitude)
    @markers = @parks.geocoded.map do |park|
      {
        lat: park.latitude,
        lng: park.longitude,
        info_window: render_to_string(partial: "info_window", locals: { park: park })
      }
    end
  end
end
