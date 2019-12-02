class SettingsController < ApplicationController
  def index
    @settings = Setting.all
  end

  def show
    @user = current_user.id
    @setting = Setting.find(params[:id])
  end
end
