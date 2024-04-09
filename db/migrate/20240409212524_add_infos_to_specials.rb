class AddInfosToSpecials < ActiveRecord::Migration[7.0]
  def change
    add_column :specials, :summary, :text
    add_column :specials, :funfact, :text
  end
end
