Rails.application.routes.draw do
  devise_for :users

  resources :projets

  get 'pages/home'

  root 'pages#home'
end
