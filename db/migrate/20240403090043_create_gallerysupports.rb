class CreateGallerysupports < ActiveRecord::Migration[7.0]
  def change
    create_table :gallerysupports do |t|
      t.string :name
      t.string :image_path

      t.timestamps
    end
  end
end
