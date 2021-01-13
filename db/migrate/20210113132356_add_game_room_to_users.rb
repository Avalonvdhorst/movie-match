class AddGameRoomToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :game_room, null: false, foreign_key: true
  end
end
