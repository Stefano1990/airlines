class AircraftConfigurationsController < ApplicationController
  def index
    @aircraft_configurations = current_airline.aircraft_configurations
  end

  def new
    aircraft_type = AircraftType.find(params[:aircraft_type_id])
    @aircraft_configuration = current_airline.aircraft_configurations.new(aircraft_type: aircraft_type)
  end

  def create
    @aircraft_configuration = current_airline.aircraft_configurations.new(aircraft_configuration_params)
    if @aircraft_configuration.save
      redirect_to aircraft_configurations_path, flash: { success: "Aircraft configuration saved." }
    else
      render 'new'
    end
  end

  private

  def aircraft_configuration_params
    params.require(:aircraft_configuration).permit(:aircraft_type_id, :name, :first_seats, :business_seats, :economy_seats)
  end
end
