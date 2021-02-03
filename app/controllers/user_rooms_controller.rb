class UserRoomsController < ApplicationController
  def create
    @game_room = GameRoom.find_by(roomcode: params[:inv_code])
    if UserRoom.find_by(user: current_user, game_room: @game_room)
      return redirect_to game_room_path(@game_room)
    end

    user_room = UserRoom.new(
      game_room: @game_room,
      user: current_user,
      owner: false
    )
    if user_room.save
      redirect_to edit_user_room_path(user_room)
    else
      flash[:notice] = user_room.errors.full_messages[0]
      redirect_back(fallback_location: root_path)
    end
  end

  def edit
    @user_room = UserRoom.find(params[:id])
  end

  def update
    @user_room = UserRoom.find(params[:id])
    @user_room.update(user_room_params)
    redirect_to game_room_path(@user_room.game_room)
  end

  private

  def user_room_params
    params.require(:user_room).permit(genre_ids: [])
  end
end
