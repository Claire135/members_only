class PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

def create
  @post = Post.new(post_params)
  @post.user = current_user  # Associate the post with the logged-in user

    if @post.save
      redirect_to root_path, notice: "Post created successfully"
    else
      render :new, status: :unprocessable_entity
    end
end

  private
    def post_params
      params.require(:post).permit(:title, :body)
    end
end
