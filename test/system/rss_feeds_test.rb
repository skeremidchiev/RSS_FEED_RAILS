require "application_system_test_case"

class RssFeedsTest < ApplicationSystemTestCase
  setup do
    @rss_feed = rss_feeds(:one)
  end

  test "visiting the index" do
    visit rss_feeds_url
    assert_selector "h1", text: "Rss Feeds"
  end

  test "creating a Rss feed" do
    visit rss_feeds_url
    click_on "New Rss Feed"

    fill_in "Description", with: @rss_feed.description
    fill_in "Link", with: @rss_feed.link
    fill_in "Publishdate", with: @rss_feed.publishDate
    fill_in "Source", with: @rss_feed.source
    fill_in "Sourceurl", with: @rss_feed.sourceURL
    fill_in "Title", with: @rss_feed.title
    click_on "Create Rss feed"

    assert_text "Rss feed was successfully created"
    click_on "Back"
  end

  test "updating a Rss feed" do
    visit rss_feeds_url
    click_on "Edit", match: :first

    fill_in "Description", with: @rss_feed.description
    fill_in "Link", with: @rss_feed.link
    fill_in "Publishdate", with: @rss_feed.publishDate
    fill_in "Source", with: @rss_feed.source
    fill_in "Sourceurl", with: @rss_feed.sourceURL
    fill_in "Title", with: @rss_feed.title
    click_on "Update Rss feed"

    assert_text "Rss feed was successfully updated"
    click_on "Back"
  end

  test "destroying a Rss feed" do
    visit rss_feeds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rss feed was successfully destroyed"
  end
end
