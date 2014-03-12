class Aircraft < ActiveRecord::Base
  belongs_to      :airline
  belongs_to      :aircraft_type
  belongs_to      :aircraft_configuration
end
