class SearchController < ApplicationController
  def index
    @articles = Article.paginate(page: params[:page], per_page: 5)
    @users = User.order(:name).paginate(page: params[:page], per_page: 5)
  end
end
