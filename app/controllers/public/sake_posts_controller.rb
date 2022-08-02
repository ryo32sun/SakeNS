class Public::SakePostsController < ApplicationController
  def index
    @sake_posts = SakePost.page(params[:page]).order("created_at DESC")
  end

  def edit
    @sake_post = SakePost.find(params[:id])
  end
  
  def update
    @sake_post = SakePost.find(params[:id])
    @sake_post.update(sake_post_params)
    redirect_to sake_post_path(@sake_post)
  end
  
  def show
    @sake_post = SakePost.find(params[:id])
    @shop_posts = @sake_post.shop_posts.all
    @sake = @sake_post.sake
    @customer= @sake_post.customer
  end

  def new
    @sake_post = SakePost.new
    @genres = SakeGenre.all
  end
  
  def destroy
    @sake_post = SakePost.find(params[:id])
    @sake_post.destroy
    redirect_to customer_path(current_customer)
  end
  
  private
  
  def sake_post_params
    params.require(:sake_post).permit(:image, :feature, :impression, :rate)
  end
end
