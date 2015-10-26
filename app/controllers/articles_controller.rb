class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def create
    @article = Article.create(article_params)

    render json: @article
  end

  def update
    @article = Article.find(params[:article_id])
    @article.update_attributes(article_params)

    render json: @article
  end

  private

  def article_params
    params.require(:article).permit(:title, :category, :author)
  end
end
