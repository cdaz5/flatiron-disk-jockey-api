Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/mashups', to: 'mashups#index'
      post '/mashups', to: 'mashups#create'
      post '/login', to: 'auth#create'
      get '/me', to: 'auth#show'
    end
  end
end
