class Public::SakeFavoritesController < ApplicationController
  def index
    @sake_favorites = current_customer.sake_favorites.page(params[:page])
  end
  
  def create
    sake_post = SakePost.find(params[:sake_post_id])
    favorite = current_customer.sake_favorites.new(sake_post_id: sake_post.id)
    favorite.save
    redirect_to sake_post_path(sake_post)
  end
  
  def destroy
    sake_post = SakePost.find(params[:sake_post_id])
    favorite = current_customer.sake_favorites.find_by(sake_post_id: sake_post.id)
    favorite.destroy
    redirect_to sake_post_path(sake_post)
  end

end
