class AddFirstDiscoveriesToSpecials < ActiveRecord::Migration[7.0]
  def change
    add_column :specials, :first_discoveries, :date
  end
end
