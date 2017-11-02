require 'test_helper'

class UsersShowTest < ActionDispatch::IntegrationTest

  def setup
    @user     = users(:archer)
    @unactivated = users(:lana)
  end

  test "show unactivated user should redirect to the root url" do
    log_in_as(@user)
    get user_path(@unactivated)
    follow_redirect!
    assert_template '/'
  end
end
