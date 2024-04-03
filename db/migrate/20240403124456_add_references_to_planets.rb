class AddReferencesToPlanets < ActiveRecord::Migration[7.0]
  def change
    add_reference :planets, :star, null: false, foreign_key: true
  end
end
