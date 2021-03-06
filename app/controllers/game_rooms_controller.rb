class GameRoomsController < ApplicationController
  def new
    @gameroom = GameRoom.new
    @roomcode = ""
    numbers = %W[1 2 3 4 5 6 7 8 9 0]
    5.times do
      @roomcode += numbers.sample
    end
  end

  def create
    @gameroom = GameRoom.new(gameroom_params)
    @gameroom.user_rooms.first.user = current_user
    @gameroom.user_rooms.first.owner = true
    @gameroom.save
    redirect_to root_path
  end

  def show
    @gameroom = GameRoom.find(params[:id])
    swipes = Swipe.where(user: current_user, game_room: @gameroom)
    @movies = Movie.where(genres: @gameroom.genres)
                   .where.not(id: swipes.pluck(:movie_id))
  end

  private

  def gameroom_params
    params.require(:game_room).permit(:roomcode, user_rooms_attributes: [
      genre_ids: []
    ])
  end
end
