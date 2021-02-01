class Movie < ApplicationRecord
  has_one_attached :photo
  has_many :movie_genres
  has_many :genres, through: :movie_genres
end
