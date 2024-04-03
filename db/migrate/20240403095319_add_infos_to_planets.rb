class AddInfosToPlanets < ActiveRecord::Migration[7.0]
  def change
    add_column :planets, :revolution, :float
    add_column :planets, :rotation, :float
    add_column :planets, :distance_from_star, :string
  end
end
