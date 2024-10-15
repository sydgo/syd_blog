class SearchController < ApplicationController
  def index
    @articles = []
    @users = []

    if params[:query].present?
      @articles = Article.where("title LIKE ? OR description LIKE ?", "%#{params[:query]}%", "%#{params[:query]}%")
      @users = User.where("username LIKE ? OR email LIKE ?", "%#{params[:query]}%", "%#{params[:query]}%")
    end
  end
end