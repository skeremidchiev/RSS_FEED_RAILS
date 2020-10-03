class CreateRssFeeds < ActiveRecord::Migration[6.0]
  def change
    create_table :rss_feeds do |t|
      t.string :title
      t.string :source
      t.string :sourceURL
      t.string :link
      t.datetime :publishDate
      t.string :description

      t.timestamps
    end
  end
end
