class CreateSwipes < ActiveRecord::Migration[6.0]
  def change
    create_table :swipes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :movie, null: false, foreign_key: true
      t.boolean :is_liked
      t.references :game_room, null: false, foreign_key: true

      t.timestamps
    end
  end
end
