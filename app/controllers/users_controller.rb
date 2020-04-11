class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update,]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user, notice: '新しくアカウントを作りました'
    else
      render :new
    end
  end

  def edit
    if @user.id != current_user.id
      redirect_to user_path, notice:  "ログインしてください"
    end
  end

  def show
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: '更新しました'
    else
      render :edit 
    end
  end

  def favorite
    @favorites = current_user.favorite_feeds.all
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email,:image, :image_cache, :password,
                                 :password_confirmation)
  end
end
