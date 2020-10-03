require 'test_helper'

class RssFeedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rss_feed = rss_feeds(:one)
  end

  test "should get index" do
    get rss_feeds_url
    assert_response :success
  end

  test "should get new" do
    get new_rss_feed_url
    assert_response :success
  end

  test "should create rss_feed" do
    assert_difference('RssFeed.count') do
      post rss_feeds_url, params: { rss_feed: { description: @rss_feed.description, link: @rss_feed.link, publishDate: @rss_feed.publishDate, source: @rss_feed.source, sourceURL: @rss_feed.sourceURL, title: @rss_feed.title } }
    end

    assert_redirected_to rss_feed_url(RssFeed.last)
  end

  test "should show rss_feed" do
    get rss_feed_url(@rss_feed)
    assert_response :success
  end

  test "should get edit" do
    get edit_rss_feed_url(@rss_feed)
    assert_response :success
  end

  test "should update rss_feed" do
    patch rss_feed_url(@rss_feed), params: { rss_feed: { description: @rss_feed.description, link: @rss_feed.link, publishDate: @rss_feed.publishDate, source: @rss_feed.source, sourceURL: @rss_feed.sourceURL, title: @rss_feed.title } }
    assert_redirected_to rss_feed_url(@rss_feed)
  end

  test "should destroy rss_feed" do
    assert_difference('RssFeed.count', -1) do
      delete rss_feed_url(@rss_feed)
    end

    assert_redirected_to rss_feeds_url
  end
end
