require 'test_helper'

class NginxTestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nginx_test = nginx_tests(:one)
  end

  test "should get index" do
    get nginx_tests_url
    assert_response :success
  end

  test "should get new" do
    get new_nginx_test_url
    assert_response :success
  end

  test "should create nginx_test" do
    assert_difference('NginxTest.count') do
      post nginx_tests_url, params: { nginx_test: { content: @nginx_test.content, title: @nginx_test.title } }
    end

    assert_redirected_to nginx_test_url(NginxTest.last)
  end

  test "should show nginx_test" do
    get nginx_test_url(@nginx_test)
    assert_response :success
  end

  test "should get edit" do
    get edit_nginx_test_url(@nginx_test)
    assert_response :success
  end

  test "should update nginx_test" do
    patch nginx_test_url(@nginx_test), params: { nginx_test: { content: @nginx_test.content, title: @nginx_test.title } }
    assert_redirected_to nginx_test_url(@nginx_test)
  end

  test "should destroy nginx_test" do
    assert_difference('NginxTest.count', -1) do
      delete nginx_test_url(@nginx_test)
    end

    assert_redirected_to nginx_tests_url
  end
end
