class NewsController < ApplicationController
  before_action :set_news, only: %i[ show edit update destroy ]

  # GET /news or /news.json
  def index
    @news = News.all
  end

  # GET /news/1 or /news/1.json
  def show
    @news = News.find(params[:id])
    @comments = @news.comments
  end

  def new_comment
    @comment = Comment.new
  end

  def show_and_new_comment
    show
    new_comment
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news
      @news = News.find(params[:id])
    end
end
