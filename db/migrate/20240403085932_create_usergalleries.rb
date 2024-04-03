class CreateUsergalleries < ActiveRecord::Migration[7.0]
  def change
    create_table :usergalleries do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.boolean :shared

      t.timestamps
    end
  end
end
