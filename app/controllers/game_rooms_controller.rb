class GameRoomsController < ApplicationController
  def create

  end

  def new
    @game_room = GameRoom.new
  end

end
