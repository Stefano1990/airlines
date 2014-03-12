class CreateWorlds < ActiveRecord::Migration
  def change
    create_table :worlds do |t|
      t.string :name
      t.date :start_year
      t.date :end_year
      t.integer :players
      t.integer :max_players
      t.integer :tick_rate

      t.timestamps
    end
  end
end
