Rails.application.routes.draw do
  resources :greetings
  root 'greetings#index'
  namespace :api do
    namespace :v1 do
      get 'greetings/random', to: 'greetings#random'
    end
  end
end
