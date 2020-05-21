Rails.application.routes.draw do

  root to: 'pages#home'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users

  resources :bookings, only: [:new, :create, :index]

  get 'ca', to: 'pages#ca'
  get 'a-propos-de-nous', to: 'pages#about'

end
