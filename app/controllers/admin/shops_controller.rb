class Admin::ShopsController < ApplicationController
  def index
    @shops = Shop.page(params[:page]).order("created_at DESC")
  end

  def edit
    @shop = Shop.find(params[:id])
    @genres = ShopGenre.all
  end
  
  def update
    shop = Shop.find(params[:id])
    shop.update(shop_params)
    redirect_to admin_shops_path
  end
  
  def destroy
    Shop.find(params[:id]).destroy
    redirect_to admin_shops_path
  end
  
  private
  
  def shop_params
    params.require(:shop).permit(:name, :shop_genre_id, :prefectures, :address, :remark)
  end
  
end
