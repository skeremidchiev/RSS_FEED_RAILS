Rails.application.routes.draw do
  root 'rss_feeds#index'
  resources :rss_feeds
end
