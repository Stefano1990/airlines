class CreateAirports < ActiveRecord::Migration
  def change
    create_table :airports do |t|
      t.string :country
      t.string :name
      t.string :code
      t.string :latitude
      t.string :longitude
      t.integer :daily_origin_pax
      t.integer :daily_destination_pax

      t.timestamps
    end
  end
end
