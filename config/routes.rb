Rails.application.routes.draw do
  devise_for :users
  
  resources :projets
  resources :posts
  
  get 'pages/home'
  controller :pages do
    get :home, to: 'pages#home'
    get :contact, to: 'pages#contact'
    post :contact, to: 'pages#contact_submit'
    get :a_propos, to: 'pages#a_propos'
    get :blog, to: 'pages#blog'
  end

  root 'pages#home'
end
