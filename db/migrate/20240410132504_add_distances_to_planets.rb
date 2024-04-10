class AddDistancesToPlanets < ActiveRecord::Migration[7.0]
  def change
    add_column :planets, :average_distance_to_earth, :text
  end
end
