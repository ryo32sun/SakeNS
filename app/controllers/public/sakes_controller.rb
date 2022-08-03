class Public::SakesController < ApplicationController
  def index
    @sakes = Sake.page(params[:page]).order("created_at DESC")
  end

  def show
    @sake = Sake.find(params[:id])
    @sake_posts = @sake.sake_posts.order("created_at DESC").limit(3)
  end
  
  def search
    @sakes = Sake.search(params[:keyword]).page(params[:page]).order("created_at DESC")
    genre_id = params[:keyword]
    @genre = SakeGenre.find_by(id: genre_id)
    render :index
  end
end
