class AddInfosToSatellites < ActiveRecord::Migration[7.0]
  def change
    add_column :satellites, :revolution, :float
    add_column :satellites, :rotation, :float
    add_column :satellites, :distance_from_planet, :string
  end
end
