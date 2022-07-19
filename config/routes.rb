Rails.application.routes.draw do
  resources :clients
  devise_for :users
  
  resources :projets
  resources :posts
  
  controller :pages do
    get :home, to: 'pages#home'
    get :a_propos, to: 'pages#a_propos'
    get :blog, to: 'pages#blog'
    get :nos_clients, to: 'pages#nos_clients'
    get :contact, to: 'pages#contact'

    post :contact, to: 'pages#contact_submit'
  end

  root 'pages#home'
end
