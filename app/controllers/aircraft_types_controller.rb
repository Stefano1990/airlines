class AircraftTypesController < ApplicationController
  def index
    @aircraft_types = AircraftType.all
  end

  def show
    @aircraft_type = AircraftType.find(params[:id])
  end
end
