Rails.application.routes.draw do
  resources :rss, only: [:show]
end
