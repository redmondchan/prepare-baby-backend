Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: %i[create, update]
      post '/signup', to: 'users#create'


      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'

      resources :babies
      resources :logs
    end
  end
end
