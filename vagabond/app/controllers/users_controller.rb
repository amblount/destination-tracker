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
  end

  def update
    @user.update(user_params)
    redirect_to @user
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :city_id, :image_url)
  end
end
