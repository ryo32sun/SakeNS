require "test_helper"

class Public::ShopPostsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get public_shop_posts_new_url
    assert_response :success
  end
end
