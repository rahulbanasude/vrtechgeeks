Rails.application.routes.draw do
  get 'pages/index'

  get 'pages/about'

resources :posts, only: [:index, :show]
  root 'posts#index'
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
