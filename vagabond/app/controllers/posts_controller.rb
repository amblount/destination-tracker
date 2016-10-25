class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.create(post_params)
  end

  def index
    @posts = Post.all
  end

  def show
    post_id = params[:id]
    @post = Post.find_by_id(post_id)
    @user = User.all
  end

  private

    def post_params
      params.require(:post).permit(:user_id, :city_id, :name, :content)
    end
end
