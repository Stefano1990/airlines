class AircraftsController < ApplicationController
  def new
    @aircraft_type = AircraftType.find(params[:aircraft_type_id])
    @aircraft = current_airline.aircrafts.new(aircraft_type: @aircraft_type)
    @aircraft_configurations = current_airline.aircraft_configurations.where(aircraft_type: @aircraft_type).all
  end
end
