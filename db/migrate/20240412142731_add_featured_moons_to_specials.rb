class AddFeaturedMoonsToSpecials < ActiveRecord::Migration[7.0]
  def change
    add_column :specials, :featured_moons, :text
  end
end
