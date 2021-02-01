Rails.application.routes.draw do
  devise_for :users
  resources :movies
  get '/genres', to: 'movies#genres', as: :genres
  root to: 'movies#home'
  resources :game_rooms, only: [:new, :create]
  resources :user_rooms, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
