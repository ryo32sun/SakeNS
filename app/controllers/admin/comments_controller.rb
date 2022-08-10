class Admin::CommentsController < ApplicationController
  def index
    @comments = SakeComment.all
  end
end
