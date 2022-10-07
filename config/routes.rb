# Rails.application.routes.default_url_options[:host] = 'localhost:3000'


Rails.application.routes.draw do


  resources :user_games
  resources :game_reviews
  resources :subscriptions 
  resources :games
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/hello', to: 'application#hello_world'
  # Defines the root path route ("/")
  # root "articles#index"

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  post '/signup', to: "users#create"


  get '*path',
    to: 'fallback#index',
    constraints: ->(req) {!req.xhr? && req.format.html?}
end
