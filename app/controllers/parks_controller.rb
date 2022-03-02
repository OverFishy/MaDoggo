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
  end


def show
  @park = Park.find(params[:id])
end


private

def find_park
  @parks = Park.find(params[:id])
end

def park_params
  params.require(:parks).permit(:name, :location, :latitude, :longitude)
 end
end
