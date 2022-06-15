class PostsController < ApplicationController
  load_and_authorize_resource
  def index
    @users = User.all
    @user = User.find(params[:user_id])
    @posts = User.find(params[:user_id]).posts.includes([:comments])
    render 'list_of_posts'
  end

  def show
    @users = User.all
    @user = User.find(params[:user_id])
    @post = User.find(params[:user_id]).posts.find(params[:id])
    render 'post'
  end

  def new
    @user = User.find(params[:user_id])
    @post = @user.posts.new
  end

  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.new(post_params)
    @post.comments_counter = 0
    @post.likes_counter = 0

    if @post.save
      flash[:alert] = 'Post was saved succesfully'
      redirect_to user_post_path(user_id: @user.id, id: @post.id)
    else
      flash[:alert] = 'Could not save the post'
      redirect_to user_show_path(id: @user.id)
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = 'Post deleted!'
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
