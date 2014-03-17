class AircraftConfiguration < ActiveRecord::Base

  belongs_to :aircraft_type
  belongs_to :aircraft
  belongs_to :airline

  validates   :aircraft_type, :first_seats, :business_seats, :economy_seats, presence: true
end
