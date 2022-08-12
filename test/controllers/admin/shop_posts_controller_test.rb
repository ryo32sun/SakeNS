require "test_helper"

class Admin::ShopPostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_shop_posts_index_url
    assert_response :success
  end
end
