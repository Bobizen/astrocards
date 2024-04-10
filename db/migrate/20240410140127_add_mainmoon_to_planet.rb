class AddMainmoonToPlanet < ActiveRecord::Migration[7.0]
  def change
    add_column :planets, :main_moon, :text
  end
end
