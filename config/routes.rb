Rails.application.routes.draw do
  devise_for :users

  resources :projets

  get 'pages/home'
  controller :pages do
    get :home, to: 'pages#home'
    get :contact, to: 'pages#contact'
    post :contact, to: 'pages#contact_submit'
    get :a_propos, to: 'pages#a_propos'
  end

  root 'pages#home'
end
