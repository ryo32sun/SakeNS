class Public::ShopPostsController < ApplicationController
  def new
    @sake_post = SakePost.new(sake_post_params)
    @sake = Sake.new
    @sake.sake_genre_id = params[:sake_post][:sake_genre_id]
    @sake.name = params[:sake_post][:name]
    @sake.prefectures = params[:sake_post][:prefectures]
    @sake.save
    @sake_post.sake_id = @sake.id
    @sake_post.customer_id = current_customer.id
    @sake_post.save
    
    @shop = Shop.new
    @genres = ShopGenre.all
  end
  
  def create
    @shop_post = ShopPost.new
    @shop = Shop.new(shop_params)
    @shop.save
    @shop_post.shop_id = @shop.id
    @shop_post.rate = params[:shop][:rate]
    @shop_post.sake_post_id = params[:shop][:sake_post_id]
    @shop_post.save
    redirect_to sake_post_path(@shop_post.sake_post_id)
  end
  
  private
  
  def shop_params
    params.require(:shop).permit(:shop_genre_id, :name, :prefectures, :address, :remark)
  end
  
  def sake_post_params
    params.require(:sake_post).permit(:image, :feature, :impression, :rate)
  end
  
end
