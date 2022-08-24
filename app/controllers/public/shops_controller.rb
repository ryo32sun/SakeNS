class Public::ShopsController < ApplicationController
  def index
    @shops = Shop.page(params[:page]).order("created_at DESC")
    @s_all = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
    @shop_posts = @shop.shop_posts.order("created_at DESC").limit(3)
  end
  
  def search
    @s_all = Shop.search(params[:keyword])
    @shops = @s_all.page(params[:page])
    genre_id = params[:keyword]
    @genre = ShopGenre.find_by(id: genre_id)
    render :index
  end
  
  def prefectures
    prefectures = params[:prefectures]
    shop_ids = params[:shops].split(",")
    shops = Shop.where(id: shop_ids).select{ |shop| shop.prefectures == prefectures}
    @s_all = Shop.all
    # @s_all = Shop.where(prefectures: prefectures)
    @shops = Shop.where(id: shops.map(&:id)).page(params[:page]).order("created_at DESC")
    render :index
  end
  
  def shop_select
    @select = params[:shop_select]
    if params[:shops] != nil
      shop_ids = params[:shops].split(",")
      @s_all = Shop.where(id: shop_ids)
    else
      @s_all = Shop.all
    end
    # @shops = Shop.all.order("created_at DESC")
  end
  
  def rate
    # binding.pry
    if params[:shops] != nil
      shop_ids = params[:shops].split(",")
      shops = Shop.where(id: shop_ids).select{ |shop| shop.shop_posts.average(:rate) >= 4}
      @s_all = Shop.where(id: shops.map(&:id))
      @shops = @s_all.page(params[:page]) 
      #配列にページネーションをする際は"Kaminari.paginate_array(配列)"と記述する
      render :index
    else
      redirect_to shops_path
    end
  end

end
