# frozen_string_literal: true

class FeedsController < ApplicationController
  before_action :set_feed, only: %i[show edit update destroy]

  def index
    @feeds = Feed.order(created_at: :desc)
  end

  def show
    @favorite = current_user.favorites.find_by(feed_id: @feed.id) if logged_in?
    @comments = @feed.comments.order(created_at: :desc)
    @comment = @feed.comments.build
  end

  def new
    @feed = if params[:back]
              Feed.new(feed_params)
            else
              Feed.new
            end
  end

  def edit
    redirect_to feed_path if @feed.user_id != current_user.id
  end

  def confirm
    @feed = current_user.feeds.new(feed_params)
    render :new if @feed.invalid?
  end

  def create
    @feed = current_user.feeds.new(feed_params)
    if @feed.save
      redirect_to @feed, notice: '新しく投稿しました'
    else
      render :new
    end
  end

  def update
    if @feed.update(feed_params)
      redirect_to @feed, notice: '更新しました'
    else
      render :edit
    end
  end

  def destroy
    @feed.destroy
    redirect_to feeds_url, notice: '削除されました'
  end

  def new_guest
    user = User.find_or_create_by!(email: 'guest@example.com', name: 'ゲストユーザー') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.created_at = Time.now
    end
    session[:user_id] = user.id
    redirect_to feeds_path, notice: 'ゲストユーザーとしてログインしました。'
  end

  private

  def set_feed
    @feed = Feed.find(params[:id])
  end

  def feed_params
    params.require(:feed).permit(:image, :image_cache, :content)
  end
end
