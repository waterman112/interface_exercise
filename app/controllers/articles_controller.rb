class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new params[:article]
    @article.save

    redirect_to @article
  end

  def show
    @article = Article.find params[:id]
  end

  def edit
    @article = Article.find params[:id]
  end

  def update
    @article = Article.find params[:id]
    if @article.update params[:article]
      redirect_to
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find params[:id]
    @article.destroy

    redirect_to articles_path
  end
end
