class Public::SakesController < ApplicationController
  def index
    @sakes = Sake.page(params[:page]).order("created_at DESC")
  end

  def show
    @sake = Sake.find(params[:id])
    @sake_posts = @sake.sake_posts.order("created_at DESC").limit(3)
  end
end
