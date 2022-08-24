class Public::SakesController < ApplicationController
  def index
    @sakes = Sake.page(params[:page]).order("created_at DESC")
  end

  def show
    @sake = Sake.find(params[:id])
    @sake_posts = @sake.sake_posts.order("created_at DESC").limit(3)
    
  end
  
  def search
    sakes = Sake.search(params[:keyword])
    @sakes = sakes.page(params[:page]).order("created_at DESC")
    genre_id = params[:keyword]
    @genre = SakeGenre.find_by(id: genre_id)
    render :index
  end
  
  def prefectures
    prefectures = params[:prefectures]
    if prefectures == "選択してください"
      @sakes = Sake.page(params[:page]).order("created_at DESC")
    else
      sakes = Sake.where(prefectures: prefectures)
      @sakes = sakes.page(params[:page]).order("created_at DESC")
    end
    render :index
  end
  
  def rate
    # binding.pry
    if params[:sakes] != nil
      sake_ids = params[:sakes].split(",")
      sakes = Sake.where(id: sake_ids).select{ |sake| sake.sake_posts.average(:rate) >= 4}
      sakes = Sake.where(id: sakes.map(&:id))
      @sakes = sakes.page(params[:page]).order("created_at DESC")
      # @sakes = Kaminari.paginate_array(sakes).page(params[:page])
      #配列にページネーションをする際は"Kaminari.paginate_array(配列)"と記述する
      render :index
    else
      redirect_to sakes_path
    end
  end
  
  def sake_select
    # binding.pry
    @select = params[:sake_select]
    @sake_all = Sake.all
    # @sakes = Sake.page(params[:page]).order("created_at DESC")
  end
  
end
