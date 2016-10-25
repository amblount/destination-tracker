class UsersController < ApplicationController
  def new
    @user = User.new
    @cities = City.all
  end

  def create
    p "xxxxx"
    @user = User.create(user_params)
    p "XXXXX"
    redirect_to '/'
  end

  def edit
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :city_id, :image_url)
  end
end
