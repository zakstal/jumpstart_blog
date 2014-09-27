class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @comment.article_id = params[:article_id]

    @comment.save

    redirect_to article_path(@comment.article)
  end

  def show
    @comment = Comment.new
    @comment.article_id = @article.id
  end

  def comment_params
    params.require(:comment).permit(:author_name, :body)
  end
end
