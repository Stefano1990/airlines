class AircraftConfiguration < ActiveRecord::Base
  belongs_to :aircraft_type
  belongs_to :aircraft
  belongs_to :airline
end
