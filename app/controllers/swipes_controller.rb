class SwipesController < ApplicationController
  def index
    @swipes = Swipe.all
  end

  def show
    @user = current_user.id
    @offer = Offer.find(params[:offer_id])
    # @swipe = Swipe.find(params[:id])
  end

  def new
    @swipe = Swipe.new(swipe_params)
  end

  def create
    # @user = current_user.id
    @offer = Offer.find(params[:offer_id])
    @swipe = Swipe.new(swipe_params)

    @swipe.user_id = current_user.id

    @offer.swipe = @swipe
    @swipe.create

  end

  private

  def swipe_params
    params.require(:swipe).permit(:result, :user_id, :offer_id)
  end
end
