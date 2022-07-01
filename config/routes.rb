Rails.application.routes.draw do
  devise_for :users

  resources :projets

  get 'pages/home'
  controller :pages do
    get :home, to: 'pages#home'
    get :contact, to: 'pages#contact'
    post :contact, to: 'pages#contact_submit'
  end

  root 'pages#home'
end
