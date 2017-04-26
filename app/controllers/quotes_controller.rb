class QuotesController < ApplicationController
  include QuotesHelper

  def show
    @quote = Quote.find(params[:id])
    @comment = Comment.new
    @comment.quote_id = @quote.id
  end

  def index
    @quotes = Quote.all
  end

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.new(quote_params)
    if @quote.save
      flash.notice = "Cytat \"#{@quote.sentence}\" utworzony pomyślnie."
      redirect_to quote_path(@quote)
    else
      render :new
    end
  end

  def destroy
    @quote = Quote.find(params[:id])
    @quote.destroy

    flash.notice = "Cytat \"#{@quote.sentence}\" usunięty pomyślnie."

    redirect_to quotes_path
  end

  def edit
    @quote = Quote.find(params[:id])
  end

  def update
    @quote = Quote.find(params[:id])
    @quote.update(quote_params)

    flash.notice = "Cytat: \"#{@quote.sentence}\" edytowany pomyślnie."

    redirect_to quote_path(@quote)
  end
end
