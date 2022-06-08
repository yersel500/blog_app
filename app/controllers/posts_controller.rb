class PostsController < ApplicationController
  def index
    @users = User.all
    @posts = User.find(params[:user_id]).posts
    render 'list_of_posts'
  end

  def show
    render 'post'
  end
end
