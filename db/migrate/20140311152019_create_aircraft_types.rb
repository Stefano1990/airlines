class CreateAircraftTypes < ActiveRecord::Migration
  def change
    create_table :aircraft_types do |t|
      t.integer :manufacturer_id
      t.string :name
      t.string :family
      t.float :average_speed
      t.integer :max_seats
      t.float :range
      t.integer :turn_time
      t.integer :min_runway_length
      t.decimal :base_price, precision: 14, scale: 2
      t.decimal :monthly_lease, precision: 14, scale: 2

      t.timestamps
    end
  end
end
