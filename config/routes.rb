Rails.application.routes.draw do
  resources :cards
  resources :players
  resources :games, only: [:index, :create, :update]

  get 'games/history', to: 'games#history'

  root to: "cards#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
