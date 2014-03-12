class Airline < ActiveRecord::Base
  belongs_to  :world
  has_many    :routes
  has_many    :flights
end
