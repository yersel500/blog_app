class LikesController < ApplicationController
  def create
    @post = Post.find(params[:id])
    @like = @post.likes.create(user_id: params[:user_id])
    redirect_to user_post_path(user_id: params[:user_id], id: @post.id)
  end
end
