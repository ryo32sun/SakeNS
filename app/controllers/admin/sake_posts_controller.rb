class Admin::SakePostsController < ApplicationController
  def index
    @sake_posts = SakePost.page(params[:page]).order("created_at DESC")
  end
  
  def customer
    @sake_posts = SakePost.where(customer_id: params[:customer_id]).page(params[:page]).order("created_at DESC")
    render :index
  end

  def show
    @sake_post = SakePost.find(params[:id])
    @sake = @sake_post.sake
    @genre = @sake.sake_genre
    @customer = @sake_post.customer
  end
  
  def destroy
    sake_post = SakePost.find(params[:id])
    sake_post.destroy
    redirect_to admin_sake_posts_path
  end

  def edit
    @sake_post = SakePost.find(params[:id])
  end
  
  def update
    sake_post = SakePost.find(params[:id])
    sake_post.update(sake_post_params)
    redirect_to admin_sake_posts_path
  end
  
  
  private
  
  def sake_post_params
    params.require(:sake_post).permit(:rate, :image, :feature, :impression, :rate)
  end
  
end
