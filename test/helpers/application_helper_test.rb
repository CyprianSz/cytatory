require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,          "CYTATORY"
    assert_equal full_title("Pomoc"), "Pomoc | CYTATORY"
    assert_equal full_title("Dodaj"), "Dodaj | CYTATORY"
  end
end