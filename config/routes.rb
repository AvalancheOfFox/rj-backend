Rails.application.routes.draw do
  resources :game_boards
  resources :questions
  resources :users

  post '/login', to: "auth#login"
  post '/signup', to: "users#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
