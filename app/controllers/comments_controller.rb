class CommentsController < ApplicationController
  load_and_authorize_resource
  def show
    render 'posts/post'
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    flash[:alert] = if @comment.save
                      'Comment was created successfully'
                    else
                      'Could not save the comment'
                    end
    redirect_to user_post_path(user_id: params[:user_id], id: params[:post_id])
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    flash[:notice] = 'Comment deleted!'
    redirect_to user_post_path(user_id: params[:user_id], id: params[:post_id])
  end

  private

  def comment_params
    defaults = { user_id: params[:user_id] }
    params.require(:comment).permit(:text).reverse_merge(defaults)
  end
end
