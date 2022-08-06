class Public::ShopFavoritesController < ApplicationController
  def index
    @favorites = current_customer.shop_favorites.page(params[:page])
  end
  
  def create
    shop = Shop.find(params[:shop_id])
    favorite = current_customer.shop_favorites.new(shop_id: shop.id)
    favorite.save
    redirect_to shop_path(shop)
  end
  
  def destroy
    shop = Shop.find(params[:shop_id])
    favorite = current_customer.shop_favorites.find_by(shop_id: shop.id)
    favorite.destroy
    redirect_to shop_path(shop)
  end

end
