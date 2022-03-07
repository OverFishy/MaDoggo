class ParkVisitsController < ApplicationController
  def create
    @park = Park.find(params[:park_id])
    @park_visit = ParkVisit.new(user: current_user, park: @park)
    @park_visit.save
    redirect_to park_path(@park)
  end

  def destroy
    @park_visit = ParkVisit.find(params[:id])
    @park_visit.destroy
    redirect_to park_path(@park_visit.park)
  end
end

# test
