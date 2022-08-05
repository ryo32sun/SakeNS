class Admin::ShopPostsController < ApplicationController
  def index
    @shop_posts = ShopPost.page(params[:page]).order("created_at DESC")
  end
  
  def destroy
    ShopPost.find(params[:id]).destroy
    redirect_to admin_shop_posts_path
  end
  
end
