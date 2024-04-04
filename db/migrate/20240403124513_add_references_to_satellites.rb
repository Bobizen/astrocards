class AddReferencesToSatellites < ActiveRecord::Migration[7.0]
  def change
    add_reference :satellites, :planet, null: false, foreign_key: true
  end
end
