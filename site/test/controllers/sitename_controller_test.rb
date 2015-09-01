require 'test_helper'

class SitenameControllerTest < ActionController::TestCase
  test "should get news" do
    get :news
    assert_response :success
  end

  test "should get our_work" do
    get :our_work
    assert_response :success
  end

  test "should get order" do
    get :order
    assert_response :success
  end

  test "should get contacts" do
    get :contacts
    assert_response :success
  end

end
