class Public::SearchesController < ApplicationController
  def index
  end
  
  def search
    model = params[:model]
    @word = params[:word]
    if model == "Sake"
      @s_all = Sake.look(params[:word])
      @sakes = @s_all.page(params[:page]).order("created_at DESC")
      render template: "public/sakes/index"
    else
      @s_all = Shop.look(params[:word])
      @shops = @s_all.page(params[:page]).order("created_at DESC")
      render template: "public/shops/index"
    end
  end

  def form
    @genres = SakeGenre.all
  end
end
