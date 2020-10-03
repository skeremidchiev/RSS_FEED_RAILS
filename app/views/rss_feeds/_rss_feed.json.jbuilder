json.extract! rss_feed, :id, :title, :source, :sourceURL, :link, :publishDate, :description, :created_at, :updated_at
json.url rss_feed_url(rss_feed, format: :json)
