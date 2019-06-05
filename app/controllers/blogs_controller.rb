class BlogsController < ApplicationController
  before_action :authenticate_user!, except: [:index]  # deviseのメソッドで「ログインしていないユーザーをログイン画面に送る」メソッド

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new # 新規投稿用の空のインスタンス
  end

  def create
  end

  def show
    @blog = Blog.find(params[:id])
  end

end