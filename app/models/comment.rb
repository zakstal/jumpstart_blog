class Comment < ActiveRecord::Base


  def show
    @comment = Comment.new
    @comment.article_id = @article.id
  end

   belongs_to :article
end
