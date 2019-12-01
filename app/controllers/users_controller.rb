class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = current_user
    @user = User.new(user_params)
      if @user.save
        redirect_to user_path(@user)
      else
        render 'users/new'
      end
  end

  def edit
    @user = User.find(params[:id])
    @skills = ['Ruby', 'PHP', 'Javascript', 'Angular', 'HTML', 'Python']
    @location = ['Lisbon', 'New York', 'Porto', 'Madrid', 'Berlin', 'Munich', 'Warsaw', 'Remotely']
    @seniority = ['Junior', 'Medium', 'Senior']
    @contract_type = ['Permanent', '1 year', 'Short-term']
    @job_type = ['Full-time', 'Part-time']
    @min_salary = [1000, 1500, 2000, 3000, 4000, 5000, 6000, 7000, 10_000, 20_000, 30_000]
    @benefits = ['Dog-friendly', 'Private Healthcare', 'Yoga', 'Parking spot']
    @position = ['Front-end', 'Back-end', 'Fullstack', 'Internship']
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render 'users/edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :email, :role, :first_name, :last_name, :photo,
      :company_name, :company_photo, :user_photo,
      :skills, :location, :job_type, :seniority,
      :min_salary, :position, :contract_type, :benefits
    )
  end
end
