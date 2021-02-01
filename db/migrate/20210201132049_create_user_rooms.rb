class CreateUserRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :user_rooms do |t|
      t.references :user, null: false, foreign_key: true
      t.references :game_room, null: false, foreign_key: true
      t.text :genres, array: true, default: []
      t.boolean :owner

      t.timestamps
    end

    remove_column :users, :game_room_id
  end
end
