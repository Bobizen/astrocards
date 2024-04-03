class CreateSpecials < ActiveRecord::Migration[7.0]
  def change
    create_table :specials do |t|
      t.string :name_en
      t.string :name_fr
      t.string :name_ch_simplified
      t.string :name_ch_pinyin
      t.string :image_path
      t.string :card_ids

      t.timestamps
    end
  end
end
