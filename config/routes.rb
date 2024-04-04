Rails.application.routes.draw do
  devise_for :users

  resources :projets
  resources :posts
  resources :clients

  controller :pages do
    get :home, to: 'pages#home'
    get :portfolio, to: 'pages#portfolio'
    get :qui_sommes_nous, to: 'pages#qui_sommes_nous'
    get :blog, to: 'pages#blog'
    get :nos_clients, to: 'pages#nos_clients'
    get :contact, to: 'pages#contact'
    post :contact, to: 'pages#contact_submit'
    get :services, to: 'pages#services'
    get :logiciels, to: 'pages#logiciels'
    get :camino, to: 'pages#camino'
    get :prestofacto, to: 'pages#prestofacto'
    get :crystal_data, to: 'pages#crystal_data'
    get :planning, to: 'pages#planning'
    get :guide_planning, to: 'pages#guide_planning'
    get :emargements, to: 'pages#emargements'
    get :mentions_légales, to: 'pages#mentions_légales', as: :mentions_legales
  end

  root 'pages#home'
end
