class ArticlesController < ApplicationController


  def new
    @article = Article.new
  end

  def index
  end

  def create
    @article = Article.create(article_params)
    redirect_to article_path(current_article)

  end

  def show
  end

  private

  helper_method :current_article
  def current_article
    @article ||= Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :description)
  end

end
