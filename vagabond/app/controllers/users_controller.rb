class UsersController < ApplicationController
  def new
    @user = User.new
    @cities = City.all
  end

  def create
    @user = User.new(user_params)
    @user.city_id = params[:city][:city_id]
    @user.save

    if @user.valid?
        flash[:success] = "Thanks! Please log in."
        redirect_to "/login"
    else
        flash[:error] = "Something went wrong."
        redirect_to login_path
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.city_id = params[:city][:city_id]
    @user.update(user_params)
    redirect_to @user
  end

  def show
    @user = User.find(params[:id])
    city_id = @user.city.id
    @city = City.find(city_id)
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :city_id, :image_url)
  end
end
