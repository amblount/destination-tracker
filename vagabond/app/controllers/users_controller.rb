class UsersController < ApplicationController
  def new
    @user = User.new
    @cities = City.all
  end

  def create
    @user = User.create(user_params)

    if @user.valid?
        flash[:success] = "Thanks! Please log in."
        redirect_to "/login"
    else
        flash[:error] = "Something went wrong."
        redirect_to signup_path
    end
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
