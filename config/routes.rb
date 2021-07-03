Rails.application.routes.draw do
  resources :registrations
  namespace :api do
    namespace :v1 do
      resources :tournaments do
        resources :registrations, only: [:create, :index, :show, :destroy] 
      end
      resources :teams
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
