Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: %i[create]
      post 'login', to: 'users#create'
      get '/profile', to: 'users#show'

      resources :babies
      resources :logs
    end
  end
end
