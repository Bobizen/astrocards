class AddDistancesToStars < ActiveRecord::Migration[7.0]
  def change
    add_column :stars, :average_distance_to_earth, :float
  end
end
