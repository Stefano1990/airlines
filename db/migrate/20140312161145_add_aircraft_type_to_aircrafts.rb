class AddAircraftTypeToAircrafts < ActiveRecord::Migration
  def change
    add_column :aircrafts, :aircraft_type_id, :integer
  end
end
