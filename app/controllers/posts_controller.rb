class PostsController < ApplicationController
  def index
    @users = User.all
    @posts = User.find(params[:user_id]).posts
    render 'list_of_posts'
  end

  def show
    @users = User.all
    @post = User.find(params[:user_id]).posts.find(params[:id])
    render 'post'
  end

  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.create(post_params)
    redirect_to user_post_path(user_id: @user.id, id: @post.id)
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
