Rails.application.routes.draw do
  resources :follows
  resources :likes
  resources :posts
  resources :users

  get '/users/:id/history', to: 'users#history'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
