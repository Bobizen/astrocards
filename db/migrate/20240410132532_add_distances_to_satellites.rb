class AddDistancesToSatellites < ActiveRecord::Migration[7.0]
  def change
    add_column :satellites, :average_distance_to_earth, :text
  end
end
