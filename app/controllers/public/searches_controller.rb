class Public::SearchesController < ApplicationController
  def index
  end
  
  def search
    model = params[:model]
    @word = params[:word]
    if model == "Sake"
      @sakes = Sake.look(params[:word]).page(params[:page]).order("created_at DESC")
      render template: "public/sakes/index"
    else
      @shops = Shop.look(params[:word]).page(params[:page]).order("created_at DESC")
      render template: "public/shops/index"
    end
  end

  def form
    @genres = SakeGenre.all
  end
end
