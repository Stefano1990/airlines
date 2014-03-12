class Flight < ActiveRecord::Base
  scope :outgoing, -> (departure_airport) { where('departure_airport_id = ?', departure_airport.id) }

  belongs_to      :airline
  belongs_to      :route
  belongs_to      :aircraft
  belongs_to      :arrival_airport, class_name: "Airport", foreign_key: :arrival_airport_id
  belongs_to      :departure_airport, class_name: "Airport", foreign_key: :departure_airport_id
end
