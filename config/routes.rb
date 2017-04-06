Rails.application.routes.draw do
  get 'static_pages/about'

  root "topics#index"
  resources :topics do
    member do
      post "upvote"
      post "downvote"
    end
  end
end
