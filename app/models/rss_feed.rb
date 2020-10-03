class RssFeed < ApplicationRecord

  def self.custom
    # validate and get cookies
    validationResponse = RestClient::Request.execute(
      method: :post,
      url: "localhost:8000/signup",
      payload: '{"username" : "user", "password" : "password"}'
    )

    token = validationResponse.cookies

    # get
    response = RestClient::Request.execute(
      method: :post,
      url: "localhost:8000/rss",
      payload: '{"rss_urls" : ["https://news.google.com/rss", "https://www.mediapool.bg/rss"]}',
      cookies: token
    )

    jsonObj = JSON.parse(response)

    # save to db
    jsonObj["items"].each do |feed|
      fd = RssFeed.new(feed)

      if RssFeed.where(:title => fd.title).present?
        print "skipping"
      else
        print "saving"
        fd.save
      end
    end
  end
end
