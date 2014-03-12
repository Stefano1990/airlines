class Airport < ActiveRecord::Base
  has_many    :routes, as: :departure_airport
  has_many    :routes, as: :arrival_airport
  has_many    :outgoing_flights, class_name: 'Flight', foreign_key: :departure_airport_id
  has_many    :incoming_flights, class_name: 'Flight', foreign_key: :incoming_airport_id
end
