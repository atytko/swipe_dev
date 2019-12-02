class SwipesController < ApplicationController
  def index
    @swipes = current_user.swipes.right
  end

  def show
    @swipe = Swipe.find(params[:id])
  end

  def new
    @swipe = Swipe.new(swipe_params)
  end

  def create
    @offer = Offer.find(params[:offer_id])
    @swipe = Swipe.new(swipe_params)
    @swipe.build_chat_room
    @swipe.user = current_user
    @swipe.offer = @offer
    @swipe.save!

    render json: @swipe
  end

  private

  def swipe_params
    params.require(:swipe).permit(:result)
  end
end
