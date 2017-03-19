require 'test_helper'

class QuotesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "CYTATORY"
  end

  test "should get index" do
    get quotes_url
    assert_response :success
    assert_select "title", "Spis Cytatorów | #{@base_title}"
  end

  test "should get new" do
    get new_quote_url
    assert_response :success
    assert_select "title", "Dodaj | #{@base_title}"
  end
end
