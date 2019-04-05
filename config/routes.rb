Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: %i[create]
      post '/signup', to: 'users#create'
      get '/profile', to: 'users#show'

      post '/login', to: 'auth#create'

      resources :babies
      resources :logs
    end
  end
end
