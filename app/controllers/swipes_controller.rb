class SwipesController < ApplicationController
   def index
  @swipes = Swipe.all
  end

  def show
    @swipe = Swipe.find(params[:id])
  end

 def swipe_params
    params.require(:swipe).permit(:result, :user_id, :offer_id)
  end


end

