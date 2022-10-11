# frozen_string_literal: true

# Articles CRUD controller
class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def new; end

  def create
    @article = Article.new(params.require(:article).permit(:title, :description))
    if @article.save
      flash[:notice] = 'Article created succesfully'
      redirect_to @article
    else
      render 'new'
    end
  end
end
