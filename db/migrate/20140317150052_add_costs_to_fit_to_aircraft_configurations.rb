class AddCostsToFitToAircraftConfigurations < ActiveRecord::Migration
  def change
    add_column :aircraft_configurations, :costs_to_fit, :decimal, precision: 8, scale: 2
  end
end
