class AddMainmoonToSatellites < ActiveRecord::Migration[7.0]
  def change
    add_column :satellites, :main_moon, :text
  end
end
