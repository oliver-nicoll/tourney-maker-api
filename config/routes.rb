Rails.application.routes.draw do
  resources :tournaments
  resources :team_tournaments
  resources :games
  resources :teams
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
