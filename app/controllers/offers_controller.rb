class OffersController < ApplicationController
  def index
    @swipes = []
    @offers = offers_matches_filters
    @new_offers = []
    @offers.each do |offer|
      if Match.where(user_id: current_user.id).where(offer_id: offer.id) == []
        swipe = Swipe.create!(
          user_id: current_user.id,
          offer_id: offer.id,
          result: true
        )
        @new_offers << offer
        @swipes << swipe
      end
    end
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
    location = current_user.location
    skills = current_user.skills
    seniority = current_user.seniority
    contract_type = current_user.contract_type
    job_type = current_user.job_type
    min_salary = current_user.min_salary
    position = current_user.position
    benefits = current_user.benefits

    @offers = Offer
    counter_filters = 0

    where = {}

    if location.present? && location.size > 0
      where["location"] = location
      counter_filters += 1
    end

    if skills.present? && skills.size > 0
      where["skills"] = skills
      counter_filters += 1
    end

    if seniority.present? && seniority.size > 0
      where["seniority"] = seniority
      counter_filters += 1
    end

    if contract_type.present? && contract_type.size
      where["contract_type"] = contract_type
      counter_filters += 1
    end

    if job_type.present? && job_type.size > 0
      where["job_type"] = job_type
      counter_filters += 1
    end

    if min_salary.present? && min_salary.to_i.size > 0
      where["min_salary"] = min_salary.to_i..9999999
    end

    if position.present? && position.size > 0
      where["position"] = position
      counter_filters += 1
    end

    if benefits.present? && benefits.size > 0
      where["benefits"] = benefits
      counter_filters += 1
    end

    if counter_filters > 0
      Offer.where(where)
    else
      Offer.all
    end
  end

  # def get_offers
  #   @offers = Offer.where(location: current_user.location).where(skills: current_user.skills)

  # end

  def all_filters
    array = [
      match_location,
      match_skills,
      match_seniority,
      match_contract_type,
      match_job_type,
      match_min_salary,
      match_position,
      match_benefits
    ]

    matches = [true, true, true, true, true, true, true, true]

    diff = array - matches
    diff.size > 0 ? false : true
  end

  def offer_params
    params
      .require(:offer)
      .permit(
        :user_id,
        :min_salary,
        :location,
        :job_type,
        :contract_type,
        :skills,
        :description,
        :position,
        :benefits,
        :company_name,
        :company_photo
      )
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
