Rails.application.routes.draw do
  resources :users, only: [:new, :create, :destroy]
  # get '/users' => "users#index"
  # get '/signup' => "users#new"#, as: "new_user"
  # post '/signup' => "users#create"
  # get '/logout' => "users#destroy"
  get 'welcome/homepage'
  get '/login' => "sessions#login"
  post '/login' => "sessions#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
