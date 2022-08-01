require "test_helper"

class Public::SearchesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_searches_index_url
    assert_response :success
  end

  test "should get form" do
    get public_searches_form_url
    assert_response :success
  end
end
