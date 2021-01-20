class AddGameRoomReferenceToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :game_room, null: true, foreign_key: true
  end
end
