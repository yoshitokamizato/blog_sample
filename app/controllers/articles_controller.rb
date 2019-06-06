class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: [:index]  # deviseのメソッドで「ログインしていないユーザーをログイン画面に送る」メソッド

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new # 新規投稿用の空のインスタンス
  end

  def create
  end

  def show
    @article = Article.find(params[:id])
  end

end
