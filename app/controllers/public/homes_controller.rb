class Public::HomesController < ApplicationController
  def top
    @sake_posts = SakePost.page(params[:page]).order("created_at DESC")
  end
end
