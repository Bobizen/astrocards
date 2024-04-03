class CreatePlanets < ActiveRecord::Migration[7.0]
  def change
    create_table :planets do |t|
      t.string :name_en
      t.string :image_path
      t.string :name_fr
      t.string :name_ch_simplified
      t.string :name_ch_pinyin
      t.string :type
      t.integer :number_satellites
      t.text :summary
      t.text :funfact

      t.timestamps
    end
  end
end
