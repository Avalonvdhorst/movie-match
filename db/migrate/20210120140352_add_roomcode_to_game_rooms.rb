class AddRoomcodeToGameRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :game_rooms, :roomcode, :string
  end
end
