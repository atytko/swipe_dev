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

  private

  def user_params
    params.require(:user).permit(:email, :role, :first_name, :company_name, :company_photo, :user_photo)
  end
end
