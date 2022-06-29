Rails.application.routes.draw do
  devise_for :users
  resources :projets

  root 'projets#index'
end
