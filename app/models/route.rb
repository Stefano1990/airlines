class Route < ActiveRecord::Base
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"

  def first_passengers
    ((departure_airport.daily_origin_pax + arrival_airport.daily_origin_pax)/200)
  end

  def business_passengers
    ((departure_airport.daily_origin_pax + arrival_airport.daily_origin_pax)/100)
  end

  def economy_passengers
    ((departure_airport.daily_origin_pax + arrival_airport.daily_origin_pax)/50)
  end
end
