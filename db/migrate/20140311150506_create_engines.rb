class CreateEngines < ActiveRecord::Migration
  def change
    create_table :engines do |t|
      t.string :name
      t.integer :aircraft_type_id
      t.float :thrust
      t.float :weight
      t.float :fuel_flow
      t.decimal :adjusted_price, precision: 14, scale: 2
      t.decimal :adjusted_lease, precision: 14, scale: 2
      t.float :adjusted_range
      t.float :adjusted_speed
      t.float :adjusted_min_runway_length

      t.timestamps
    end
  end
end
