class PostsController < ApplicationController
  before_action :require_login, only: :new
  def new
    @post = Post.new
    @city = City.find(params[:city_id])
  end

  def edit
    @post = Post.find(params[:id])
    @city = City.find(params[:city_id])
  end

  def update
    p 'xxxxx'
    Post.find(params[:id]).update(post_params)
    @city = City.find(params[:city_id])

    redirect_to city_path(@city)

  end

  def create
    # associate post with a city
    post = City.find(params[:city_id]).posts.new(post_params)
    post.user_id = current_user.id
    post.save

    city = City.find(params[:city_id])
    redirect_to city_path(city)
  end

  def index
    @posts = User.find(current_user.id).posts
  end

  def show
    post_id = params[:id]
    @post = Post.find_by_id(post_id)
  end

  def destroy
    post = Post.find(params[:id])
    city = post.city.id
    post.destroy


    redirect_to city_path(city)
  end

  private

    def post_params
      params.require(:post).permit(:user_id, :city_id, :name, :content)
    end
end
