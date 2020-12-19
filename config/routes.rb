Rails.application.routes.draw do
  resources :cards_players
  resources :cards
  resources :players
  resources :games

  get 'games/history', to: 'games#history'

  root to: "cards#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
