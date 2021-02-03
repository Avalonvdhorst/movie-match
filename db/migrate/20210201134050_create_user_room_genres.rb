class CreateUserRoomGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :user_room_genres do |t|
      t.references :user_room, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
