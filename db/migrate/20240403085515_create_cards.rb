class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.references :object, polymorphic: true, null: false

      t.timestamps
    end
  end
end
