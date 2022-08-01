require "test_helper"

class Public::ShopFavoritesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_shop_favorites_index_url
    assert_response :success
  end
end
