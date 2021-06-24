Rails.application.routes.draw do
  # resources :tournaments
  # resources :games
  # resources :teams

  namespace :api do
    namespace :v1 do
      resources :tournaments, only: [:index, :show, :create]
      resources :teams, only: [:index, :show, :create]
      resources :games
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
