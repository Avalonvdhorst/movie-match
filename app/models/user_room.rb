class UserRoom < ApplicationRecord
  belongs_to :user
  belongs_to :game_room
  validates :user, uniqueness: { scope: :game_room, message: "Already joined" }
  has_many :user_room_genres
  has_many :genres, through: :user_room_genres
end
