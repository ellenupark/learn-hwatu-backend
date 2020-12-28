Rails.application.routes.draw do
  resources :cards
  resources :players
  resources :games, only: [:index, :create, :update]

  get 'games/history', to: 'games#history'

  root to: "cards#index"
end
