class UserRoomGenre < ApplicationRecord
  belongs_to :genre
  belongs_to :user_room
end
