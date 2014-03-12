class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :route_id
      t.integer :airline_id
      t.integer :departure_airport_id
      t.integer :arrival_airport_id
      t.integer :first_pax
      t.integer :business_pax
      t.integer :economy_pax

      t.timestamps
    end
  end
end
