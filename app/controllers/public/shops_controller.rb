class Public::ShopsController < ApplicationController
  def index
    @shops = Shop.page(params[:page])
  end

  def show
    @shop = Shop.find(params[:id])
    @shop_posts = @shop.shop_posts.order("created_at DESC").limit(3)
  end
  
  def search
    @shops = Shop.search(params[:keyword]).page(params[:page])
    genre_id = params[:keyword]
    @genre = ShopGenre.find_by(id: genre_id)
    render :index
  end
end
