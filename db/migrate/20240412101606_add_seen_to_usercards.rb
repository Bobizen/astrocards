class AddSeenToUsercards < ActiveRecord::Migration[7.0]
  def change
    add_column :usercards, :seen, :boolean, default: true
  end
end
