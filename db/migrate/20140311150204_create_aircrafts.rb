class CreateAircrafts < ActiveRecord::Migration
  def change
    create_table :aircrafts do |t|
      t.integer :airline_id
      t.datetime :bought_at
      t.datetime :lease_start
      t.datetime :lease_end

      t.timestamps
    end
  end
end
