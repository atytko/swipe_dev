class SwipesController < ApplicationController
   def index
  @swipes = Swipe.all
  end

  def show
    @swipe = Swipe.find(params[:id])
  end

def new
    @swipe = Swipe.new
  end

  def create
    @swipe = Swipe.new(swipe_params)
    if @swipe.save
      redirect_to offers_path
    else
      render :new
    end
  end
end

 def swipe_params
    params.require(:swipe).permit(:result, :user_id, :offer_id)
  end
