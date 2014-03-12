class Route < ActiveRecord::Base
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"
  belongs_to :airline

  def base_passengers
    passengers = 0
    passengers = (departure_airport.daily_origin_pax + arrival_airport.daily_destination_pax)/100
    passengers = passengers + arrival_airport.outgoing_flights.count*1
    passengers = passengers + airline.flights.outgoing(arrival_airport).count*3
    passengers.floor
    # TODO: fix bug that reverse flights increase number of passengers.
  end

  def first_passengers
    (base_passengers*0.02).floor
  end

  def business_passengers
    (base_passengers*0.10).floor
  end

  def economy_passengers
    (base_passengers*0.88).floor
  end
end
