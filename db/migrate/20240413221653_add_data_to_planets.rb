class AddDataToPlanets < ActiveRecord::Migration[7.0]
  def change
    add_column :planets, :diameter, :float
    add_column :planets, :gravity, :float
    add_column :planets, :temp_min, :integer
    add_column :planets, :temp_max, :integer
  end
end
