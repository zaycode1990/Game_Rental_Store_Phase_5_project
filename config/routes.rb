Rails.application.routes.draw do
  
  resources :user_games, only: [:create]
  resources :subscriptions 
  resources :game_reviews, only: [:create]
  resources :games
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/hello', to: 'application#hello_world'
  # Defines the root path route ("/")
  # root "articles#index"
end
