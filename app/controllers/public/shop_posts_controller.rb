class Public::ShopPostsController < ApplicationController
  def new
    @sake_post = SakePost.new(sake_post_params)
    @sake = Sake.new
    @sake.name = params[:sake_post][:name]
    if Sake.find_by(name: @sake.name) == nil
      @sake.sake_genre_id = params[:sake_post][:sake_genre_id]
      @sake.prefectures = params[:sake_post][:prefectures]
      @sake.image = params[:sake_post][:image]
      @sake.save
    else
      @sake = Sake.find_by(name: @sake.name)
    end
    @sake_post.sake_id = @sake.id
    @sake_post.customer_id = current_customer.id
    if @sake_post.save
    else
      @genres =SakeGenre.all
      render template: "public/sake_posts/new" and return
    end
    @shop = Shop.new
    @shop_post = ShopPost.new
    @genres = ShopGenre.all
    
    names = Shop.all.map(&:name)
    # resond_toでhtmlの場合とjsonの場合の処理を分ける
    respond_to do |format|
      format.html 
      format.json {render json: names.to_json}
    end
  end
  
  def auto_complete
    shops = Shop.select(:name).where("name like '%" + params[:term] + "%'")
    shops = shops.map(&:name)
    render json: shops.to_json 
  end
  
  def create
    @shop_post = ShopPost.new
    @shop = Shop.new(shop_params)
    if Shop.find_by(name: @shop.name) == nil
      @shop.save
    else
      @shop = Shop.find_by(name: @shop.name)
    end
    @shop_post.shop_id = @shop.id
    @shop_post.rate = params[:shop][:rate]
    @shop_post.sake_post_id = params[:shop][:sake_post_id]
    @shop_post.customer_id = current_customer.id
    if @shop_post.save
      redirect_to sake_post_path(@shop_post.sake_post_id)
    else
      @sake_post = SakePost.find_by(id: params[:shop][:sake_post_id])
      @genres = ShopGenre.all
      render :new
    end
  end
  
  def destroy
    @shop_post = ShopPost.find(params[:id])
    @shop_post.destroy
    redirect_to request.referer
  end
  
  def update
    shop_post = ShopPost.find(params[:id])
    shop_post.update(shop_post_params)
    redirect_to sake_post_path(shop_post.sake_post)
  end
  
  private
  
  def shop_params
    params.require(:shop).permit(:shop_genre_id, :name, :prefectures, :address, :remark)
  end
  
  def sake_post_params
    params.require(:sake_post).permit(:image, :feature, :impression, :rate)
  end
  
  def shop_post_params
    params.require(:shop_post).permit(:rate)
  end
  
end
