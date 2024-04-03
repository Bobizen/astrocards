class AddInfosToStars < ActiveRecord::Migration[7.0]
  def change
    add_column :stars, :revolution, :float
    add_column :stars, :rotation, :float
  end
end
