require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  def setup
    @quote = Quote.new(   sentence: "Sample quote",         
                       true_author: "Some true author", 
                       fake_author: "Some fake author",        
                          accepted: false, 
                            source: "www.blablabal.elomelo.pl",
                           user_id: 86,
                            points: 125)
  end

  test "should be valid" do
    assert @quote.valid?
  end

  test "sentance should be present" do
    @quote.sentence = ""
    assert_not @quote.valid?
  end

  test "true author should be present" do
    @quote.true_author = ""
    assert_not @quote.valid?
  end

  test "fake author should be present" do 
    @quote.fake_author = "    "
    assert_not @quote.valid?
  end

  test "source should be present" do 
    @quote.source = "  "
    assert_not @quote.valid?
  end

  test "sentence should not be too short" do 
    @quote.sentence = "x" * 9
    assert_not @quote.valid?
  end

  test "sentence should not be too long" do 
    @quote.sentence = "x" * 401
    assert_not @quote.valid?
  end

  test "true_author should not be too short" do 
    @quote.true_author = "xx"
    assert_not @quote.valid?
  end

  test "true_author should not be too long" do
    @quote.true_author = "x" * 31
    assert_not @quote.valid?
  end

  test "fake_author should not be too short" do 
    @quote.fake_author = "xx"
    assert_not @quote.valid?
  end

  test "fake_author should not be too long" do
    @quote.fake_author = "x" * 31
    assert_not @quote.valid?
  end

  test "source should not be too long" do
    @quote.source = "x" * 301
    assert_not @quote.valid?
  end
end