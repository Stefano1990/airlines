class AddAircraftConfigurationToAircrafts < ActiveRecord::Migration
  def change
    add_column :aircrafts, :aircraft_configuration_id, :integer
  end
end
