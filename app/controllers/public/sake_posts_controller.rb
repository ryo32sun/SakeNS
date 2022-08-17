class Public::SakePostsController < ApplicationController
  def index
    @sake_posts = SakePost.page(params[:page]).order("created_at DESC")
  end
  
  def customer # ユーザーページからのリンク
    @sake_posts = SakePost.where(customer_id: params[:customer_id]).page(params[:page]).order("created_at DESC")
    render :index
  end
  
  def following
    @sake_posts = SakePost.where(customer_id: [*current_customer.following_ids]).page(params[:page]).order("created_at DESC")
  end

  def edit
    @sake_post = SakePost.find(params[:id])
  end
  
  def update
    @sake_post = SakePost.find(params[:id])
    @sake_post.update(sake_post_params)
    redirect_to sake_post_path(@sake_post)
  end
  
  def show
    @sake_post = SakePost.find(params[:id])
    @shop_posts = @sake_post.shop_posts.all
    @sake = @sake_post.sake
    @customer= @sake_post.customer
    @sake_comment = SakeComment.new
  end

  def new
    @sake_post = SakePost.new
    @genres = SakeGenre.all
    @sake = Sake.new
    names = Sake.all.map(&:name)
    # resond_toでhtmlの場合とjsonの場合の処理を分ける
    respond_to do |format|
      format.html 
      format.json {render json: names.to_json}
    end
  end
  
  def auto_complete
    sakes = Sake.select(:name).where("name like '%" + params[:term] + "%'")
    sakes = sakes.map(&:name)
    render json: sakes.to_json 
  end

  def destroy
    @sake_post = SakePost.find(params[:id])
    @sake_post.destroy
    redirect_to customer_path(current_customer)
  end
  
  def sakes
    @sake_posts = SakePost.where(sake_id: params[:sake_id]).page(params[:page]).order("created_at DESC")
    render :index
  end
  
  private
  
  def sake_post_params
    params.permit(:image, :feature, :impression, :rate)
  end
end
