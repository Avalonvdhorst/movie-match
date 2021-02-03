class SwipesController < ApplicationController
  def create
    @swipe = Swipe.create(swipe_params)
    @user = current_user
    @gameroom = GameRoom.find(params[:id])

    @swipe.save
    render status: 200
  end

  private

  def swipe_params
    params.require(:swipe).permit(:movie_id, :is_liked)
  end
end
