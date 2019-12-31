require "application_system_test_case"

class NginxTestsTest < ApplicationSystemTestCase
  setup do
    @nginx_test = nginx_tests(:one)
  end

  test "visiting the index" do
    visit nginx_tests_url
    assert_selector "h1", text: "Nginx Tests"
  end

  test "creating a Nginx test" do
    visit nginx_tests_url
    click_on "New Nginx Test"

    fill_in "Content", with: @nginx_test.content
    fill_in "Title", with: @nginx_test.title
    click_on "Create Nginx test"

    assert_text "Nginx test was successfully created"
    click_on "Back"
  end

  test "updating a Nginx test" do
    visit nginx_tests_url
    click_on "Edit", match: :first

    fill_in "Content", with: @nginx_test.content
    fill_in "Title", with: @nginx_test.title
    click_on "Update Nginx test"

    assert_text "Nginx test was successfully updated"
    click_on "Back"
  end

  test "destroying a Nginx test" do
    visit nginx_tests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nginx test was successfully destroyed"
  end
end
