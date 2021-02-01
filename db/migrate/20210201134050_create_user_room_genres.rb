class CreateUserRoomGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :user_room_genres do |t|
      t.references :user_room
      t.references :genre

      t.timestamps
    end
  end
end
