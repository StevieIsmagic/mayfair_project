require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get president" do
    get pages_president_url
    assert_response :success
  end

  test "should get board" do
    get pages_board_url
    assert_response :success
  end

  test "should get history" do
    get pages_history_url
    assert_response :success
  end

  test "should get announcements" do
    get pages_announcements_url
    assert_response :success
  end

  test "should get discussions" do
    get pages_discussions_url
    assert_response :success
  end

  test "should get offerings" do
    get pages_offerings_url
    assert_response :success
  end

  test "should get neighborhoodwatch" do
    get pages_neighborhoodwatch_url
    assert_response :success
  end

  test "should get servingcommunity" do
    get pages_servingcommunity_url
    assert_response :success
  end

  test "should get documents" do
    get pages_documents_url
    assert_response :success
  end

  test "should get faq" do
    get pages_faq_url
    assert_response :success
  end

  test "should get clubtampa" do
    get pages_clubtampa_url
    assert_response :success
  end

end
