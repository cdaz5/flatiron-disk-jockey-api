Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/mashups', to: 'mashups#index'
      post '/mashups', to: 'mashups#create'
    end
  end
end
