class GameRoom < ApplicationRecord
  has_many :user_rooms
  has_many :users, through: :user_rooms

  accepts_nested_attributes_for :user_rooms
  # user_room_attributes => instanciate a new user_room

  def genres
    Genre.joins(user_room_genres: :user_room)
         .where(user_rooms: { game_room: self })
         .distinct
  end
end
