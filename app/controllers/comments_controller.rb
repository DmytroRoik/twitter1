class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy]
  def create
    @p=Post.find(params[:post_id])
    @c=@p.comments.new(params.require(:comment).permit(:body,:status))
    @c.user_id=current_user.id
    @c.save
    redirect_to post_path(@p)
  end

  def destroy
    @p = Post.find(params[:post_id])
    if current_user.id==@p.user_id
      @c = @p.comments.find(params[:id])
      @c.destroy
      redirect_to post_path(@p)
    end
  end
end
