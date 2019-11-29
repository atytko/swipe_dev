class FiltersController < ApplicationController

  def update
    @user_filters = User.find(current_user.id)

    @user_filters.location = ''
    @user_filters.skills = ''
    @user_filters.location = ''
    @user_filters.seniority = ''
    @user_filters.contract_type = ''
    @user_filters.job_type = ''
    @user_filters.min_salary = ''
    @user_filters.benefits = ''
    @user_filters.position = ''

    @user_filters.save

    redirect_to user_path(current_user.id)
  end

  # def index
  #   @filters = Filter.all
  # end

  # def edit
  #   @filter = Filter.find(params[:id])
  # end

  # def update
  #   filter_params = []
    # @filter.update(filter_params)
  #   Filter.where("min_salary = ''")
  #   redirect_to filter_path(params[:id])
  # end

  # def show
  #   @filter = Filter.find(params[:id])
  # end

  # private

  # def filter_params
  #   params.require(:filter).permit(:min_salary, :location, :position)
  # end
end
