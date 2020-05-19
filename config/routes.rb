Rails.application.routes.draw do

  resources :bookings
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'pages#home'

  devise_for :users

  get 'ca', to: 'pages#ca'
  get 'a-propos-de-nous', to: 'pages#about'
  get 'rendez-vous', to:'pages#rendez_vous'

end
