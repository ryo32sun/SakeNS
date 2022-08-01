class Admin::GenresController < ApplicationController
  def index
    @sake_genre = SakeGenre.new
    @sake_genres = SakeGenre.all
    @shop_genre = ShopGenre.new
    @shop_genres = ShopGenre.all
    
  end
  
  def sake_create
    @sake_genre = SakeGenre.new(sake_genre_params)
    @sake_genre.save
    redirect_to admin_genres_path
  end
  
  def shop_create
    @shop_genre = ShopGenre.new(shop_genre_params)
    @shop_genre.save
    redirect_to admin_genres_path
  end

  def edit
  end
  
  private
  
  def sake_genre_params
    params.require(:sake_genre).permit(:genre)
  end
  
  def shop_genre_params
    params.require(:shop_genre).permit(:genre)
  end
  
end
