class Admin::SakesController < ApplicationController
  def index
    @sakes = Sake.page(params[:page]).order("created_at DESC")
  end

  def edit
    @sake = Sake.find(params[:id])
    @genres = SakeGenre.all
  end
  
  def update
    sake = Sake.find(params[:id])
    sake.update(sake_params)
    redirect_to admin_sakes_path
  end
  
  def destroy
    Sake.find(params[:id]).destroy
    redirect_to admin_sakes_path
  end
  
  private
  
  def sake_params
    params.require(:sake).permit(:name, :sake_genre_id, :prefectures, :image)
  end
    
end
