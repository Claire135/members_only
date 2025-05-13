class HomeController < ApplicationController
  def index
    @posts = Post.all  # Fetch all posts to display on the homepage
  end
end
