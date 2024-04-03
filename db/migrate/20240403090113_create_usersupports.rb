class CreateUsersupports < ActiveRecord::Migration[7.0]
  def change
    create_table :usersupports do |t|
      t.references :usergallerycard, null: false, foreign_key: true
      t.references :gallerysupport, null: false, foreign_key: true

      t.timestamps
    end
  end
end
