class CreateAircraftConfigurations < ActiveRecord::Migration
  def change
    create_table :aircraft_configurations do |t|
      t.integer :aircraft_type_id
      t.integer :airline_id
      t.string :name
      t.integer :first_seats
      t.integer :business_seats
      t.integer :economy_seats

      t.timestamps
    end
  end
end
