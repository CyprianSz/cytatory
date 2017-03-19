module QuotesHelper
  def quote_params
    params.require(:quote).permit(:sentence, :true_author, :fake_author)
  end

  def shorted_sentence
    
  end
end
