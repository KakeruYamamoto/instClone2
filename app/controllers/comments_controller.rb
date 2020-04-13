# frozen_string_literal: true

class CommentsController < ApplicationController
  def create
    # Blogをパラメータの値から探し出し,Blogに紐づくcommentsとしてbuildします。
    @feed = Feed.find(params[:feed_id])
    @comment = @feed.comments.build(comment_params)
    respond_to do |format|
      if @comment.save
        format.js { render :index }
      else
        format.html { redirect_to feed_path(@feed), notice: '投稿できませんでした...' }
      end
    end
   end

  private

  def comment_params
    params.require(:comment).permit(:feed_id, :image, :image_cache, :content)
  end
end
