Rails.application.routes.draw do

  get 'article/new'
  get 'article/show'
  root "application#index"
  get '/register', to: "users#new"
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"
  get '/new-password', to:"users#password"
  patch '/password', to:"users#update_password"



  resources :users, except: [:new, :index] 
  resources :articles, only: [:new, :create, :show]
  resources :audios, only: [:new, :create]
  resources :user_articles, only: [:destroy, :update, :create]

end
