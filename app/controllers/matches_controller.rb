class MatchesController < ApplicationController
  def index
    @matches = Match.where(user_id:current_user.id)
  end

  def show
    @offer_id = Match.where(offer_id = offer_id)
    @match = Match.find(params[:id])
  end
end
