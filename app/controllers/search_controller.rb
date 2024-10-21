class SearchController < ApplicationController
  def index
    @articles = []
    @users = []

    if params[:query].present?
      @articles = Article.where("title LIKE '%#{params[:query]}%' OR description LIKE '%#{params[:query]}%'")
      @users = User.where("username LIKE '%#{params[:query]}%' OR email LIKE '%#{params[:query]}%'")
    end
  end
end