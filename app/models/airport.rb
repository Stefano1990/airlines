class Airport < ActiveRecord::Base
  has_many    :routes, as: :departure_airport
  has_many    :routes, as: :arrival_airport
end
