# frozen_string_literal: true

class CommentsController < ApplicationController
  def create
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
    params.require(:comment).permit(:feed_id, :content, :user_id)
  end
end
