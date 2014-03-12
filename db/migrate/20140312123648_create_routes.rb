class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.integer :departure_airport_id
      t.integer :arrival_airport_id
      t.integer :airline_id
      t.float :distance
      t.decimal :first_price, precision: 6, scale: 2
      t.decimal :business_price, precision: 6, scale: 2
      t.decimal :economy_price, precision: 6, scale: 2

      t.timestamps
    end
  end
end
