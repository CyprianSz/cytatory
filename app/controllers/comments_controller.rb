class CommentsController < ApplicationController
  include CommentsHelper

  def show
    @comment = Comment.find(params[:quote_id])
  end

  def edit
    @comment = Comment.find(params[:quote_id])
    @quote = Quote.find(params[:id])
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.quote_id = params[:quote_id]

    @comment.save

    flash.notice = "#{@comment.author} - Twój komentarz utworzony pomyślnie."

    redirect_to quote_path(@comment.quote)
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)

    flash.notice = "#{@comment.author} - Twój komentarz edytowany pomyślnie."

    redirect_to quote_path(@comment.quote)
  end

  def destroy
    @comment = Comment.find(params[:quote_id])
    @comment.destroy

    flash.notice = "#{@comment.author} - Twój komentarz został usunięty."

    redirect_to quote_path(@comment.quote)
  end
end