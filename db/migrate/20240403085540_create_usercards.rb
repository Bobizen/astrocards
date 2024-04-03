class CreateUsercards < ActiveRecord::Migration[7.0]
  def change
    create_table :usercards do |t|
      t.references :card, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
