require "test_helper"

class Public::SakeFavoritesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_sake_favorites_index_url
    assert_response :success
  end
end
