Rails.application.routes.draw do
  devise_for :users
  resources :movies
  get '/genres', to: 'movies#genres', as: :genres
  get '/group', to: 'movies#group', as: :group
  root to: 'movies#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
