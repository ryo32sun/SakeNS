class Public::HomesController < ApplicationController
  def top
    @sake_posts = SakePost.page(params[:page]).order("created_at DESC")
    @count = SakePost.all.count
  end
  
  def following
    @sake_posts = SakePost.where(customer_id: [*current_customer.following_ids]).page(params[:page]).order("created_at DESC")
    @count = SakePost.where(customer_id: [*current_customer.following_ids]).count
  end
  
end
