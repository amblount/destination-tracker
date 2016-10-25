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
    @posts = User.find(1).posts
    # @posts = User.find(current_user.id).posts
  end

  def show
    post_id = params[:id]
    @post = Post.find_by_id(post_id)
  end

  private

    def post_params
      params.require(:post).permit(:user_id, :city_id, :name, :content)
    end
end
