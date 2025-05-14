class HomeController < ApplicationController
  def index
    @posts = Post.all.includes(:user)  # Fetch all posts to display on the homepage
  end
end
