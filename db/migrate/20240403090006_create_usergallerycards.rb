class CreateUsergallerycards < ActiveRecord::Migration[7.0]
  def change
    create_table :usergallerycards do |t|
      t.references :usergallerie, null: false, foreign_key: true
      t.references :usercard, null: false, foreign_key: true

      t.timestamps
    end
  end
end
