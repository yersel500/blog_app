class PostsController < ApplicationController
  def index
    render 'list_of_posts'
  end

  def show
    render 'post'
  end
end
