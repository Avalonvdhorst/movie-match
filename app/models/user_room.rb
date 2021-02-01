class UserRoom < ApplicationRecord
  belongs_to :user
  belongs_to :game_room
  has_many :user_room_genres
  has_many :genres, through: :user_room_genres
end
