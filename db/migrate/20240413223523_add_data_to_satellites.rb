class AddDataToSatellites < ActiveRecord::Migration[7.0]
  def change
    add_column :satellites, :diameter, :float
    add_column :satellites, :gravity, :float
    add_column :satellites, :temp_min, :integer
    add_column :satellites, :temp_max, :integer
  end
end
