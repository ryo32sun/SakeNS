class Admin::CommentsController < ApplicationController
  def index
    @comments = SakeComment.page(params[:page]).order("created_at DESC")
  end
  
  def destroy
    SakeComment.find(params[:id]).destroy
    redirect_to request.referer
  end
end