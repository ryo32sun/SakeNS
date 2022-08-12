class Public::SakeCommentsController < ApplicationController
  
  def create
    # binding.pry
    @sake_post = SakePost.find(params[:sake_post_id])
    # comment = current_customer.sake_comments.new(sake_comment_params)
    sake_comment = SakeComment.new(sake_comment_params)
    sake_comment.customer_id = current_customer.id
    sake_comment.sake_post_id = @sake_post.id
    sake_comment.save
    
  end
  
  def destroy
    sake_comment = SakeComment.find(params[:id])
    @sake_post = SakePost.find_by(id: sake_comment.sake_post_id)
    sake_comment.destroy
  end
  
  private
  
  def sake_comment_params
    params.require(:sake_comment).permit(:comment)
  end
  
end
