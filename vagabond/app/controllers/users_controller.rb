class UsersController < ApplicationController
  def new
    @user = User.new
    @cities = City.all
  end

  def create
    @user = User.create(user_params)
  end

  def edit
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :city_id)
  end
end
