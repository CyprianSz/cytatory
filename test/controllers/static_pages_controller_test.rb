require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "CYTATORY"
  end

  test "should get home" do 
    get root_url
    assert_response :success
  end

  test "should get help" do
    get help_url
    assert_response :success
    assert_select "title", "Pomoc | #{@base_title}"
  end

  test "should get about" do
    get about_url
    assert_response :success
    assert_select "title", "O witrynie | #{@base_title}"
  end

  test "should get contact" do 
    get contact_url
    assert_response :success
    assert_select "title", "Kontakt | #{@base_title}"
  end

  test "should get rules" do 
    get rules_url
    assert_response :success
    assert_select "title", "Zasady | #{@base_title}"
  end
end
