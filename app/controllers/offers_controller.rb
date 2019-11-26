class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    if @offer.save
      redirect_to_path
    end
  end

  private

  def offer_params
    params.require(:offer).permit(:user_id, :min_salary, :location, :job_type, :contract_type, :skills, :description, :position, :benefits)
  end
end
