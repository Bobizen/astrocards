class AddDataToStars < ActiveRecord::Migration[7.0]
  def change
    add_column :stars, :diameter, :float
    add_column :stars, :gravity, :float
    add_column :stars, :temp_min, :integer
    add_column :stars, :temp_max, :integer
    add_column :stars, :distance_to_earth, :string
  end
end
