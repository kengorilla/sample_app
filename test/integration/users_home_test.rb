require 'test_helper'

class UsersHomeTest < ActionDispatch::IntegrationTest
  
def setup
  @user=users(:michael)
end


  test "follower following count" do
    log_in_as(@user)
    get root_path
    assert_match @user.active_relationships.count.to_s, response.body
    assert_match @user.passive_relationships.count.to_s, response.body
  end
end
