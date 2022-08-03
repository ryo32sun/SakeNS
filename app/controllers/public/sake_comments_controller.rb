class Public::SakeCommentsController < ApplicationController
  
  def create
    # binding.pry
    sake_post = SakePost.find(params[:sake_post_id])
    # comment = current_customer.sake_comments.new(sake_comment_params)
    sake_comment = SakeComment.new(sake_comment_params)
    sake_comment.customer_id = current_customer.id
    sake_comment.sake_post_id = sake_post.id
    sake_comment.save
    redirect_to sake_post_path(sake_post)
  end
  
  def destroy
    SakeComment.find(params[:id]).destroy
    redirect_to sake_post_path(params[:sake_post_id])
  end
  
  private
  
  def sake_comment_params
    params.require(:sake_comment).permit(:comment)
  end
  
end
