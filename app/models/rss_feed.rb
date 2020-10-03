class RssFeed < ApplicationRecord

    def update
            # validate
        validationResponse = RestClient::Request.execute(
            method: :post,
            url: "localhost:8000/signup",
            payload: '{"username" : "user", "password" : "password"}'
        )

        p validationResponse

        token = validationResponse.cookies

        # get
        response = RestClient::Request.execute(
            method: :post,
            url: "localhost:8000/rss",
            payload: '{"rss_urls" : ["https://news.google.com/rss", "https://www.mediapool.bg/rss"]}',
            cookies: token
        )

        response = JSON.parse(response)

    end
end
