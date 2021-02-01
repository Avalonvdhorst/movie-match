class GameRoomsController < ApplicationController
  def new
    @gameroom = GameRoom.new
    numbers = %W[1 2 3 4 5 6 7 8 9 0]
    samp_one = numbers.sample
    samp_two = numbers.sample
    samp_three = numbers.sample
    samp_four = numbers.sample
    samp_five = numbers.sample
    @roomcode = "#{samp_one}#{samp_two}#{samp_three}#{samp_four}#{samp_five}"
  end

  def create
    @gameroom = GameRoom.new(gameroom_params)
    @user = current_user
    @user.game_room_id = @gameroom.id
  end

  private

  def gameroom_params
    params.require(:game_room).permit(:roomcode)
  end
end
