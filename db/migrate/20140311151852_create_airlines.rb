class CreateAirlines < ActiveRecord::Migration
  def change
    create_table :airlines do |t|
      t.string :name
      t.integer :world_id
      t.integer :user_id

      t.timestamps
    end
  end
end
