Rails.application.routes.draw do

  root to: 'pages#home'

  devise_for :users

  get 'ca', to: 'pages#ca'
end
