class Genre < ApplicationRecord
  has_many :movie_genres
  has_many :movies, through: :movie_genres
  has_many :user_room_genres
  has_many :user_rooms, through: :user_room_genres
end
