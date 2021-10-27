require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
   @base_title = "BreadMan training site"
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | BreadMan training site"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | BreadMan training site"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | BreadMan training site"
  end

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
    assert_select "title", "Contact | BreadMan training site"
  end
end