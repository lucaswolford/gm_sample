Rails.application.routes.draw do

  get '/admin', to: "user_sessions#new"
  post '/admin', to: "user_sessions#create"
  get '/logout', to: "user_sessions#destroy"

  resources :leads

  root to: 'leads#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
