class Public::SakeFavoritesController < ApplicationController
  def index
    customer = Customer.find(params[:customer_id])
    @sake_favorites = customer.sake_favorites.page(params[:sake_page]).per(6)
    @shop_favorites = customer.shop_favorites.page(params[:shop_page]).per(5)
  end
  
  def create
    @sake_post = SakePost.find(params[:sake_post_id])
    @customer = @sake_post.customer
    favorite = current_customer.sake_favorites.new(sake_post_id: @sake_post.id)
    favorite.save
  end
  
  def destroy
    @sake_post = SakePost.find(params[:sake_post_id])
    @customer = @sake_post.customer
    favorite = current_customer.sake_favorites.find_by(sake_post_id: @sake_post.id)
    favorite.destroy
  end

end
