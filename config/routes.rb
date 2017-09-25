Rails.application.routes.draw do
  devise_for :users
  get 'pages/index'

  get 'pages/about'

resources :posts
  root 'pages#about'
  devise_scope :user do
  get '/users/:id' => 'users#show'
  get 'login', to: 'devise/sessions#new'
end
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
