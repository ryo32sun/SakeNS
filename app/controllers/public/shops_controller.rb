class Public::ShopsController < ApplicationController
  def index
    @shops = Shop.page(params[:page]).order("created_at DESC")
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
  
  def prefectures
    prefectures = params[:prefectures]
    @shops = Shop.where(prefectures: prefectures).page(params[:page]).order("created_at DESC")
    render :index
  end
  
  def shop_select
    @select = params[:shop_select]
    @shops = Shop.page(params[:page]).order("created_at DESC")
  end
  
  def rate
    if params[:shops] != nil
      shop_ids = params[:shops].split(",")
      shops = Shop.where(id: shop_ids).select{ |shop| shop.shop_posts.average(:rate) >= 4}
      @shops = Kaminari.paginate_array(shops).page(params[:page]) 
      #配列にページネーションをする際は"Kaminari.paginate_array(配列)"と記述する
      render :index
    else
      redirect_to shops_path
    end
  end

end
