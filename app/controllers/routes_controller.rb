class RoutesController < ApplicationController
  def new
    @departure_airport = Airport.find(1)
    @arrival_airport = Airport.find(2)
    @route = Route.new(departure_airport: @departure_airport, arrival_airport: @arrival_airport)
  end
end
