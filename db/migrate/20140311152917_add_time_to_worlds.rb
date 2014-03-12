class AddTimeToWorlds < ActiveRecord::Migration
  def change
    add_column :worlds, :time, :datetime
  end
end
