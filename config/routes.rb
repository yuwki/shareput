Rails.application.routes.draw do
  devise_for :users
  root "topics#index"
  resources :users
  resources :topics do
    resources :posts
  end
end
