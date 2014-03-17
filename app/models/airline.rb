class Airline < ActiveRecord::Base
  belongs_to  :world
  has_many    :routes
  has_many    :flights
  has_many    :aircrafts
  has_many    :aircraft_configurations
  has_one     :bank_account

end
