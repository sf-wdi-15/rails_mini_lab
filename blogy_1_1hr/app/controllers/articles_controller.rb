class ArticlesController < ApplicationController
  before_action :logged_in?
  before_action :find_user_article, only: [:edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find_by({id: params[:id]})
  end

  def new
    @article = Article.new
  end

  def create
    article = current_user.articles.create(article_params)
    redirect_to article_path article
  end

  def edit
  end

  def update
   @article.update_attributes(article_params)
   redirect_to article_path @article
  end

  def destroy
    @article.destroy()
  end

  private

    def article_params
      params.require(:article).permit(:title, :content)
    end

    def find_user_article
      @article = current_user.articles.find_by({id: params[:id]})
      unless @article
        redirect_to user_path(current_user)
      end
    end

end
