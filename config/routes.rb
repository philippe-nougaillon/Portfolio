Rails.application.routes.draw do
  devise_for :users

  resources :projets
  resources :posts
  resources :clients

  controller :pages do
    get :home, to: 'pages#home'
    get :a_propos, to: 'pages#a_propos'
    get :blog, to: 'pages#blog'
    get :nos_clients, to: 'pages#nos_clients'
    get :contact, to: 'pages#contact'
    post :contact, to: 'pages#contact_submit'
    get :confidentialite, to: 'pages#confidentialite'
    get :recherche, to: 'pages#recherche'
    get :services, to: 'pages#services'
  end

  root 'pages#home'
end
