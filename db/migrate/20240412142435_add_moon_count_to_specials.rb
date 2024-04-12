class AddMoonCountToSpecials < ActiveRecord::Migration[7.0]
  def change
    add_column :specials, :moon_count, :integer
  end
end
