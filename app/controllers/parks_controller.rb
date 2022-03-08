class ParksController < ApplicationController
  def index
    @parks = Park.all.includes(:dogs)

    # the `geocoded` scope filters only parks with coordinates (latitude & longitude)
    @markers = @parks.geocoded.map do |park|
      {
        lat: park.latitude,
        lng: park.longitude,
        info_window: render_to_string(partial: "info_window", locals: { park: park }),
        image_url: helpers.asset_url("paw-pin-marker")
      }
    end
    render layout: "application_simple"
  end

  def show
    @park = Park.find(params[:id])
    @park_visit = ParkVisit.find_by(user: current_user, park: @park) || ParkVisit.new
  end

  private

  def find_park
    @parks = Park.find(params[:id])
  end

  def park_params
    params.require(:parks).permit(:name, :location, :latitude, :longitude)
  end
end
