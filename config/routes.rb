Rails.application.routes.draw do
  devise_for :users
  
  resources :projets
  resources :posts
  
  controller :pages do
    get :home, to: 'pages#home'
    get :a_propos, to: 'pages#a_propos'
    get :blog, to: 'pages#blog'
    get :clients, to: 'pages#clients'
    get :contact, to: 'pages#contact'

    post :contact, to: 'pages#contact_submit'
  end

  root 'pages#home'
end
