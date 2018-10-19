# frozen_string_literal: true

class ArticlesController < OpenReadController
  before_action :set_article, only: %i[update destroy]

  # GET /articles
  def index
    @articles = Article.all

    render json: @articles
  end

  # GET /articles/1
  def show
    render json: Article.find(params[:id])
  end

  # POST /articles
  def create
    @article = current_user.articles.build(article_params)

    if @article.save
      render json: @article, status: :created
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /articles/1
  def update
    if @article.update(article_params)
      render json: @article
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  # DELETE /articles/1
  def destroy
    @article.destroy

    head :no_content
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_article
    @article = current_user.articles.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def article_params
    params.require(:article).permit(:description, :size, :color)
  end

  private :set_article, :article_params
end
