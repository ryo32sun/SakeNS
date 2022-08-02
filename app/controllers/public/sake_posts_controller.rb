class Public::SakePostsController < ApplicationController
  def index
  end

  def edit
  end

  def show
  end

  def new
    @sake_post = SakePost.new
    @genres = SakeGenre.all
  end
  
  def create
    # @sake_post = SakePost.new(sake_post_params)
    # @sake = Sake.new
    # @sake.sake_genre_id = params[:sake_post][:sake_genre_id]
    # @sake.name = params[:sake_post][:name]
    # @sake.prefectures = params[:sake_post][:prefectures]
    # @sake.save
    # @sake_post.sake_id = @sake.id
    # @sake_post.customer_id = current_customer.id
    # @sake_post.save
    
    # @shop_post = ShopPost.new
    # @genres = ShopGenre.all
    # render new_shop_post_path
  end
  
  private
  
  def sake_post_params
    params.require(:sake_post).permit(:image, :feature, :impression, :rate)
  end
end
