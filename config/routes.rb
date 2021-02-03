Rails.application.routes.draw do
  devise_for :users
  root to: 'movies#home'
  resources :game_rooms, only: [:new, :create, :show] do
      resources :swipes, only: [:create]
    end
  resources :user_rooms, only: [:create, :edit, :update]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
