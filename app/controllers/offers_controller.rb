class OffersController < ApplicationController
  def index
    # @offers = Offer.all
    # @swipe = Swipe.first
    @swipes = []
    @offers = offers_matches_filters
    @offers.each do |offer|
      swipe = Swipe.create!(
          user_id: current_user.id,
          offer_id: offer.id,
          result: true
        )
    @swipes << swipe
    end
    # byebug
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
      redirect_to offers_path
    else
      render :new
    end
  end

  private

  def offers_matches_filters
    Offer.where(location: current_user.location).where(skills: current_user.skills).where(seniority: current_user.seniority).where(contract_type: current_user.contract_type)
                    .where(job_type: current_user.job_type).where(min_salary: current_user.min_salary).where(position: current_user.position).where(benefits: current_user.benefits)
  end

  # def get_offers
  #   @offers = Offer.where(location: current_user.location).where(skills: current_user.skills)

  # end

  def all_filters
    array = [match_location, match_skills, match_seniority, match_contract_type, match_job_type, match_min_salary, match_position, match_benefits]
    matches = [true, true, true, true,true, true, true, true]

    diff = array - matches
    diff.size > 0 ? false : true
  end

  def offer_params
    params.require(:offer).permit(:user_id, :min_salary, :location, :job_type, :contract_type, :skills, :description, :position, :benefits, :company_name, :company_photo)
  end

  def match_location
    @offers = Offer.where(location: current_user.location)
    @offers.size > 0 ? true : false
  end

  def match_skills
    @offers = Offer.where(skills: current_user.skills)
    @offers.size > 0 ? true : false
  end

  def match_seniority
    @offers = Offer.where(seniority: current_user.seniority)
    @offers.size > 0 ? true : false
  end

  def match_contract_type
    @offers = Offer.where(contract_type: current_user.contract_type)
    @offers.size > 0 ? true : false
  end

  def match_job_type
    @offers = Offer.where(job_type: current_user.job_type)
    @offers.size > 0 ? true : false
  end

  def match_min_salary
    @offers = Offer.where(min_salary: current_user.min_salary)
    @offers.size > 0 ? true : false
  end

  def match_position
    @offers = Offer.where(position: current_user.position)
    @offers.size > 0 ? true : false
  end

  def match_benefits
    @offers = Offer.where(benefits: current_user.benefits)
    @offers.size > 0 ? true : false
  end
end
